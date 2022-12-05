package com.GroupProject.service;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GroupProject.dao.WalkDao;
import com.GroupProject.dto.AddrxyDto;
import com.GroupProject.dto.DogInfoDto;
import com.GroupProject.dto.MembersDto;
import com.GroupProject.dto.RecommentDto;
import com.GroupProject.dto.ReportDto;
import com.GroupProject.dto.WalkboardDto;
import com.GroupProject.dto.WeatherDto;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class WalkService {
	
	private ModelAndView mav;
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired 
	private HttpSession session;
	
	@Autowired
	private WalkDao wkdao; 
	
	//산책모집작성글페이지 이동
	public ModelAndView walkWritePage(String searchId,RedirectAttributes ra){
		
		System.out.println("산책모집 작성글페이지 이동요청");
		mav = new ModelAndView();
		//작성자의 강아지를 찾아 무게를 찾습니다. '0010/1025/2580' 형식으로 변환합니다. 최종적으로 해당 무게의 강아지가 없다면 ----로 표시합니다. 
		
		//사용자 아이디값 매개변수로 MembersDto객체로 리턴됩니다.
		System.out.println(searchId);
		MembersDto memberDto = walkMembersDogWC(searchId);
		System.out.println("dogsWeight"+memberDto.getDogsWeightCode());
		if (memberDto.getDogsWeightCode().equals("----/----/----")) {
			ra.addFlashAttribute("msg","등록된강아지가 없어 이용이 제한됩니다.");
			mav.setViewName("redirect:/walkListPage");
		}else {
			mav.addObject("memberInfo",memberDto);
			mav.setViewName("walk/WalkWrite");
		}
		
		
		return mav;
	}

	
	//맴버아이디가 주인인 강아지들의 무게를 코드로 만들어 맴버객체에 저장해 반환합니다.(필드값 추가 dogsWeightCode)
	private MembersDto walkMembersDogWC(String searchId) {

		ArrayList<DogInfoDto> dogsWeight= wkdao.selectMembersDogWeight(searchId);
		System.out.println("dogsWeight"+dogsWeight);
		
		String dogsWS="----";
		String dogsWM="----";
		String dogsWL="----";
		for(int i = 0; i<dogsWeight.size(); i++) {
			
			if (dogsWeight.get(i).getDog_weight()<10.0) {
				dogsWS="0010";
			}else if(dogsWeight.get(i).getDog_weight()>=10.0 && dogsWeight.get(i).getDog_weight()<25.0) {
				dogsWM="1025";
			}else {
				dogsWL="2580";
			}
		}
		
		MembersDto memberInfo = wkdao.selectMembersInfo(searchId);
		
		memberInfo.setDogsWeightCode(dogsWS+"/"+dogsWM+"/"+dogsWL);
		return memberInfo;
	}

	//날씨조회 서비스
	public String walkWriteSearchWeather(String address, String date,  String time) {
		//단기날씨조회를 할지, 중기날씨조회를 할지 날짜데이터로 선택합니다. 
		//오늘날짜보다 +2까지는 단기조회, 2초과는 중기조회를 합니다.
		//오늘날짜보다 +2인 날짜는 date속성을 숫자로 더하면 31일이나 1일 이전에서 오류가 나므로 따로 메소드를 만들어 날짜를 얻어내었습니다.이틀 뒤는 getDay(2);, 어제날짜는 getDay(-1);
		//현재 날짜시각정보를 가져옵니다.
		String weatherResult ="";
		
		int next2day = Integer.parseInt(walkWriteGetDay(2));
		int dateInt = Integer.parseInt(date);
		
		if(dateInt <= next2day) {
			System.out.println("단기조회서비스연결합니다");
			//단기조회
			weatherResult = searchShortWeatherService(address,date,time);
		}else {
			System.out.println("중기조회서비스연결합니다");
			//중기조회
			
			weatherResult= walkWriteSearchMiddleWeatherService(address,date,time);
			
		} 
		
		return weatherResult;
	}
	
	//현재 날짜 기준으로 매개변수일수 만큼(양수/음수 둘다 가능) 적용해서 날짜 데이터 구하기
	private String walkWriteGetDay(int num) {
		Calendar day = Calendar.getInstance();

		day.add(Calendar.DATE, num);

		String dayNum = new java.text.SimpleDateFormat("yyyy-MM-dd").format(day.getTime());

		dayNum= dayNum.replaceAll("-", "");
		return dayNum;
	}
	
	//중기예보서비스
	private String walkWriteSearchMiddleWeatherService(String address, String date, String time) {
		
		//지역코드 검색을 위해 광역지역만 자릅니다.
		String middleaddress = address.split(" ")[0];
		System.out.println("중기예보 검색할 지역:"+middleaddress);
		//잘라낸 지역정보를 DB에서 조회해 중기예보 지역 코드를 가져옵니다.
		String localCole = wkdao.selectLocalCode(middleaddress);
		System.out.println("LocalCode:"+localCole);
		//아침 6시, 오후 6시(18시)에만 발표를 합니다. 
		//현재 시간이 아침 6시 전이면 어제 18시, 아침 6시 후~18시 전이면 오늘 6시, 18시 후면 오늘 18시로 조회합니다.
		//날짜 객체를 생성합니다.
		Date today = new Date();
		System.out.println("오늘 날짜:"+today);
		//사용하기 쉽도록 simpleDateFormat으로 날짜 형식을 변환합니다.
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd/HHmm");
		System.out.println("변환된 오늘 날짜,시간:"+simpleDateFormat.format(today));
		//날짜와 시간을 분리합니다.
		String currentDay = simpleDateFormat.format(today).split("/")[0];
		String currentTime = simpleDateFormat.format(today).split("/")[1];
		//중기예보서비스에 보내 조회할 날짜와 시간을 담을 변수입니다.
		String viewDay = "";
		String viewTime = "";
		//발표시간에 맞게 조회할 날짜,시간을 조정합니다.
		int currentTimeInt = Integer.parseInt(currentTime);
		if(currentTimeInt < 605) {
			viewDay = walkWriteGetDay(-1);
			viewTime = "1800";
		}else if(currentTimeInt>=605 && currentTimeInt<1805) {
			viewDay=currentDay;
			viewTime = "0600";
		}else if(currentTimeInt >=1805) {
			viewDay=currentDay;
			viewTime = "1800";
		}
		String view = viewDay+viewTime;
		System.out.println(view);
		JsonObject resultList= new JsonObject();
		try {
			 resultList = walkWriteSearchMiddleWeather(localCole,view);
		} catch (IOException e) {
			e.printStackTrace();
		}
		//날씨 조회 결과 객체리스트가 담겨있습니다 (3일~10일간의 강수확률, 날씨상태를 가져왔습니다)
		//조회를 원하는 날짜와 오늘날짜의 차이만큼의 날짜 (최소 3일~10일) 를 알아내야하는데 산술계산하면 
		//날짜특성상 힘든 부분이 있어서 며칠 전/후 날짜 알아내는 메소드를 for문과 함께 사용하여 알아냈습니다.
		int howNextDay = 0;
		for(int i = 3; i<=10; i++) {
			if(date.equals(walkWriteGetDay(i))) {
				howNextDay= i;
			}
		}
		
		//강수확률을 조회할 키값을 담을 rainRate와 날씨상태 skyState를 만듭니다.
		String rainRate = "";		
		String skyState = "";
		
		//7일까지는 오전,오후 데이터가 있으니 time을 꺼내 오전인지 오후인지 선택합니다.
		int timeInt = Integer.parseInt(time);
		System.out.println("변환전 time:"+time+"변환 후 timeInt:"+timeInt);
		
		if(howNextDay<8) {
			if (timeInt<1200) {
				rainRate = "rnSt"+howNextDay+"Am";
				skyState = "wf"+howNextDay+"Am";
			}else {
				rainRate = "rnSt"+howNextDay+"Pm";
				skyState = "wf"+howNextDay+"Pm";
			}
		}else {
			rainRate = "rnSt"+howNextDay;
			skyState = "wf"+howNextDay;
		}
		
		//며칠후의 날씨인지 알아냈으니 객체에서 꺼내 저장합니다.
        
		Gson gson = new Gson();
		
		resultList=resultList.get("response").getAsJsonObject().get("body").getAsJsonObject().get("items")
				.getAsJsonObject().get("item").getAsJsonArray().get(0).getAsJsonObject();
		
		String rainResult = resultList.get(rainRate).getAsString();
		String skyResult = resultList.get(skyState).getAsString();
		System.out.println("rainResult:"+rainResult+"/skyResult:"+skyResult);
		
		//하늘상태를 사용하기 쉽게 변환하여 마무리합니다. 
		if(skyResult.equals("맑음")) {
			skyResult ="0";
		}else if(skyResult.equals("구름많음")) {
			skyResult ="1";
		}else if(skyResult.equals("흐림")) {
			skyResult ="2";
		}else if(skyResult.equals("구름많고 비")||skyResult.equals("흐리고 비")||skyResult.equals("구름많고 소나기")||skyResult.equals("소나기")||skyResult.equals("흐리고 소나기")) {
			skyResult ="3";
		}else if(skyResult.equals("구름많고 비/눈")||skyResult.equals("흐리고 비/눈")) {
			skyResult ="4";
		}else if(skyResult.equals("구름많고 눈")||skyResult.equals("흐리고 눈")) {
			skyResult ="5";
		}

		//발표시간에 맞게 조회할 날짜,시간을 조정합니다.
				
				if(currentTimeInt < 605) {
					viewDay = walkWriteGetDay(-1);
					viewTime = "0600";
				}else {
					viewDay=currentDay;
					viewTime = "0600";
				view = viewDay+viewTime;
				}
				
		
		//이번엔 광역이 아니라 평소 지역 (시/구) 에 따른 코드로 찾아야 합니다. 근데 이제 각각 분리해서 검색해야하는.
		String localAddr= address.split(" ")[0];
		String cityAddr="";
		if(address.split(" ").length >1) {
			cityAddr= address.split(" ")[1].substring(0,2);
		}
		int localCount = wkdao.selectlocalCount(localAddr);
		String localCityCode = "";
		String addr = "";
		if(localCount==0||localCount==6) {
			
			addr =localAddr;
			localCityCode= wkdao.selectCityCode(addr);
			
		}else if(localCount==1) {
			
			addr =cityAddr;
			localCityCode= wkdao.selectCityCode(addr);
			
		}
		
		System.out.println("중기온도 코드 조회후:"+localCityCode);
		
		JsonObject resultTmpList= new JsonObject();
		try {
			resultTmpList = walkWriteSearchMiddleTMP(localCityCode,view);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		resultTmpList=resultTmpList.get("response").getAsJsonObject().get("body").getAsJsonObject().get("items")
				.getAsJsonObject().get("item").getAsJsonArray().get(0).getAsJsonObject();
		
		String inputMinDays = "taMin"+howNextDay;
		String inputMaxDays = "taMax"+howNextDay;
		
		String minTmp = resultTmpList.get(inputMinDays).getAsString();
		String maxTmp = resultTmpList.get(inputMaxDays).getAsString();
		String tmpAvg = Math.round((Integer.parseInt(minTmp)+Integer.parseInt(maxTmp))/2)+"";
		System.out.println("평균기온"+tmpAvg);
		
		String middleResultCode = skyResult+"/하루평균: "+tmpAvg+"도/비올확률: "+rainResult+"%";
		System.out.println("중기예보 최종결과:"+middleResultCode);
		
		return middleResultCode;
	}
	
	//중기예보-온도 공공데이터 조회
	private JsonObject walkWriteSearchMiddleTMP(String localCole, String view) throws IOException {
		System.out.println("중기예보 온도 조회 메소드 요청");
		System.out.println("받은 지역정보:"+localCole+"받은 발표시간:"+view);
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/MidFcstInfoService/getMidTa"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=Ksv3GFqjkWW8tgdvlcHQYtgCOD9ht3oH47uKh2C196XL0dP2Sw%2FITNNj2kj8T28oBAZmoRFKvHqG%2B7U14fWIjw%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("JSON", "UTF-8")); /*요청자료형식(XML/JSON)Default: XML*/
        urlBuilder.append("&" + URLEncoder.encode("regId","UTF-8") + "=" + URLEncoder.encode(localCole, "UTF-8")); /*(활용가이드 하단 참고자료 참조)*/
        urlBuilder.append("&" + URLEncoder.encode("tmFc","UTF-8") + "=" + URLEncoder.encode(view, "UTF-8")); /*-일 2회(06:00,18:00)회 생성 되며 발표시각을 입력 YYYYMMDD0600 (1800)-최근 24시간 자료만 제공*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        
        //응답객체를 한줄형식의 json객체로 만들었다요
        JsonObject jsonWetherInfo = (JsonObject) JsonParser.parseString(sb.toString());    

		System.out.println(jsonWetherInfo);
		
		return jsonWetherInfo;
	}

	//중기예보-강수확률,하늘상태 공공데이터 조회
	private JsonObject walkWriteSearchMiddleWeather(String address, String date) throws IOException {
		
		System.out.println("중기예보 공공데이터 조회 메소드 요청");
		
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/MidFcstInfoService/getMidLandFcst"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=Ksv3GFqjkWW8tgdvlcHQYtgCOD9ht3oH47uKh2C196XL0dP2Sw%2FITNNj2kj8T28oBAZmoRFKvHqG%2B7U14fWIjw%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("JSON", "UTF-8")); /*요청자료형식(XML/JSON)Default: XML*/
        urlBuilder.append("&" + URLEncoder.encode("regId","UTF-8") + "=" + URLEncoder.encode(address, "UTF-8")); /*(활용가이드 하단 참고자료 참조)*/
        urlBuilder.append("&" + URLEncoder.encode("tmFc","UTF-8") + "=" + URLEncoder.encode(date, "UTF-8")); /*-일 2회(06:00,18:00)회 생성 되며 발표시각을 입력 YYYYMMDD0600 (1800)-최근 24시간 자료만 제공*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        
        //응답객체를 한줄형식의 json객체로 만들었다요
        JsonObject jsonWetherInfo = (JsonObject) JsonParser.parseString(sb.toString());    

		return jsonWetherInfo;
	}

	//단기예보서비스
	private String searchShortWeatherService(String address, String date, String time) {
		String Result = "";
		
		//회원이 입력한 시간은 분단위까지 있는데 발표는 시간단위만 검색가능하여 time 변수를 시간으로만 검색할 수 있게 변환하여 사용합니다.
		time=time.substring(0,2)+"00";
		System.out.println("변환된 time:"+time);
		//장소정보를 세분화 한 후 DB에서 검색해 좌표를 가져옵니다.
		AddrxyDto adto = new AddrxyDto();
		adto.setAddr(address.split(" ")[0]);
		if(address.split(" ").length>1) {
			adto.setDetailaddr(address.split(" ")[1]);
		}else if(address.split(" ").length==1) {
			adto.setDetailaddr("");
		}
		
		System.out.println("검색 전:"+adto);
		adto = wkdao.selectAddrxy(adto);
		System.out.println(adto);		
			//좌표 가져옴
		String x = adto.getX()+"";
		String y = adto.getY()+"";
		//현재 날짜와 시간을 바탕으로 가장 최신 발표된 날짜와 시간을 선택합니다.
		//하루동안(3시간마다) 발표 시간 02:10, 05:10, 08:10, 11:10, 14:10, 17:10, 20:10, 23:10
		Date today = new Date();
		System.out.println("오늘 날짜:"+today);
			//사용하기 쉽도록 변환합니다.
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd/HHmm");
		System.out.println("변환된 오늘 날짜,시간:"+simpleDateFormat.format(today));
			//받은 시간 객체에서 검색할 시간으로 바꾸기 위해 정수변수타입으로 변환합니다.
		int currentDate = Integer.parseInt(simpleDateFormat.format(today).split("/")[0]);
		int currentTime = Integer.parseInt(simpleDateFormat.format(today).split("/")[1]);
		
		//오늘 날짜를 기준으로 어제날짜도 필요한 경우가 있어서 '메소드'를 따로 만들었습니다.
		String yesterday = walkWriteGetDay(-1);
			 
		String viewTime = "0210";
		String viewDate = ""+currentDate;
		//현재 날짜와 시간에 따라 검색할 발표 날짜와 시간을 선택합니다.
		if(currentTime<210) {
			viewTime ="2310";
			viewDate = yesterday;
		}else if(currentTime<510) {
			viewTime ="0210";
		}else if(currentTime<810) {
			viewTime ="0510";
		}else if(currentTime<1110) {
			viewTime ="0810";
		}else if(currentTime<1410) {
			viewTime ="1110";
		}else if(currentTime<1710) {
			viewTime ="1410";
		}else if(currentTime<2010) {
			viewTime ="1710";
		}else if(currentTime<2310) {
			viewTime ="2010";
		}else if(currentTime<=2359) {
			viewTime ="2310";
		}
		 ArrayList<WeatherDto> weatherList = null;
		 try {
			 System.out.println("발표검색할 날짜:"+viewDate+"시간:"+viewTime);
			 weatherList= walkWriteSearchShortWeather(date,time,x,y,viewDate,viewTime);
		 
		} catch (IOException e) {
			e.printStackTrace();
		} 
		 
			//여기서받은 최근 발표 자료리스트에 가져온 파라메터를 가지고 검색하여 원하는 객체만 결과리스트에 담습니다.

		System.out.println("리스트 갯수"+weatherList.size());
		
		ArrayList<WeatherDto> weaterResultList = new ArrayList<WeatherDto>();
		
		for(int i=0; i<weatherList.size(); i++) {
			if (weatherList.get(i).getFcstDate().equals(date) && weatherList.get(i).getFcstTime().equals(time)) {	
				
				 weaterResultList.add(weatherList.get(i)); 
				 
			}
		}
	
		//이제 회원이 선택한 날짜와 시간에 맞는 리스트를 뽑아왔습니다.
		//하늘상태 SKY와 강수상태 PTY, 온도 TMP, 강수확률 POP를 가져옵니다. 
		String sky="";
		String pty="";
		String tmp="";
		String pop="";
		for(int i =0; i<weaterResultList.size(); i++) {
			if(weaterResultList.get(i).getCategory().equals("SKY")) {
				sky= weaterResultList.get(i).getFcstValue();
			}else if(weaterResultList.get(i).getCategory().equals("PTY")) {
				pty= weaterResultList.get(i).getFcstValue();
			}else if(weaterResultList.get(i).getCategory().equals("TMP")) {
				tmp= weaterResultList.get(i).getFcstValue();
			}else if(weaterResultList.get(i).getCategory().equals("POP")) {
				pop= weaterResultList.get(i).getFcstValue();
			}	
		}
		System.out.println("가져온 정보들 sky: "+sky+", pty: "+pty+", tmp: "+tmp+", pop: "+pop); 	 
		
		//한줄의 문자열로 저장하고 사용하기 위해 수정합니다. 저장형태는 "하늘or강수상태/온도/강수확률" 입니다.
		//각 기본상태는 SKY 하늘 상태 (1맑음 3구름많음 4흐림),PTY 강수형태 (0없음, 1비, 2비/눈, 3눈, 5빗방울, 6빗방울/눈날림 7눈날림) 입니다만,
		//어차피 강수상태가 1이상일경우엔 강수상태가 덮어씌워지므로 두개의 상태형태를 사용하기 쉽게 하나로 합치겠습니다.
		//합쳐진후 날씨 상태 : 0맑음 1구름많음 2흐림 3비 4비/눈 5눈 이고, TMP 온도와 함께 회원에게 출력됩니다. 2흐림의 경우 POP인 강수확률을 추가출력합니다. 
		
		if(sky.equals("1")) {
			Result="0";
		}else if (sky.equals("3")) {
			Result="1";
		}else if (sky.equals("4")) {
			Result="2";
		}else if (pty.equals("1")||pty.equals("5")) {
			Result="3";
		}else if (pty.equals("2")||pty.equals("6")) {
			Result="4";
		}else if (pty.equals("3")||pty.equals("7")) {
			Result="5";
		}
		Result += "/온도: "+tmp+"도";
		Result += "/비올확률: "+pop+"%";
		System.out.println(Result);

	
	return Result;
		
	}

	//단기예보 공공데이터 조회 
	public ArrayList<WeatherDto> walkWriteSearchShortWeather(String date,String settime,String x, String y, String day,String time) throws IOException {
		
		//넘어온 date time값
		System.out.println("date"+date+"settime"+settime);
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=Ksv3GFqjkWW8tgdvlcHQYtgCOD9ht3oH47uKh2C196XL0dP2Sw%2FITNNj2kj8T28oBAZmoRFKvHqG%2B7U14fWIjw%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*요청자료형식(XML/JSON) Default: XML*/
        urlBuilder.append("&" + URLEncoder.encode("base_date","UTF-8") + "=" + URLEncoder.encode(day, "UTF-8")); /*‘21년 6월 28일 발표*/
        urlBuilder.append("&" + URLEncoder.encode("base_time","UTF-8") + "=" + URLEncoder.encode(time, "UTF-8")); /*2.5.8.11.14.17.20.23 의 10분 */
        urlBuilder.append("&" + URLEncoder.encode("nx","UTF-8") + "=" + URLEncoder.encode(x, "UTF-8")); /*예보지점의 X 좌표값*/
        urlBuilder.append("&" + URLEncoder.encode("ny","UTF-8") + "=" + URLEncoder.encode(y, "UTF-8")); /*예보지점의 Y 좌표값*/
        URL url = new URL(urlBuilder.toString());
      
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
		/* System.out.println("Response code: " + conn.getResponseCode()); */
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
		/* System.out.println(sb.toString()); */
        
		
        JsonObject jsonWetherInfo = (JsonObject) JsonParser.parseString(sb.toString());       	
		
		ArrayList<WeatherDto> weatherList = new ArrayList<WeatherDto>();
		
		int size = jsonWetherInfo.get("response").getAsJsonObject().get("body").getAsJsonObject().get("items")
				.getAsJsonObject().get("item").getAsJsonArray().size();
		Gson gson = new Gson();
		
		JsonObject jObj;
		WeatherDto weather;
		for(int i = 0; i <size; i++) {
			jObj = jsonWetherInfo.get("response").getAsJsonObject().get("body").getAsJsonObject().get("items")
					.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();

			if(date.equals(jObj.get("fcstDate").getAsString()) && settime.equals(jObj.get("fcstTime").getAsString())) {
				
			weather = gson.fromJson(jObj, WeatherDto.class);
			
			weatherList.add(weather);
			}
		}

		return weatherList;
	}

	//산책모집 게시글 등록 요청
	public ModelAndView walkWrite(WalkboardDto walkboard, RedirectAttributes ra) {
		System.out.println("walkWrite 서비스 요청");
		
		mav =new ModelAndView();
		String maxWalkCode = wkdao.selectMaxWalkCode();

		System.out.println("selectMaxWalkCode실행됨: "+ maxWalkCode);
		
		int codeNum = Integer.parseInt(maxWalkCode.substring(2,5));
		
		
		codeNum+=1;
		String walkCode="";
		
		if(maxWalkCode.equals("WB000")) {
		
			walkCode = "WB001";
		}else {
						
			if(codeNum<10) {
				walkCode = "WB00"+codeNum;			
			}else if(codeNum<100) {
				walkCode = "WB0"+codeNum;
			}else if(codeNum<100) {
				walkCode = "WB"+codeNum;
			}
		}
		
		
		walkboard.setWalk_code(walkCode);
		System.out.println("walkboard :"+walkboard);
		
		int result = wkdao.insertWrite(walkboard);
		
		walkboard.setWalk_mid(walkboard.getWalk_writer());
		
		if(result >0) {
			System.out.println("1");
			ra.addFlashAttribute("msg","등록이 완료되었습니다.");
		}else {
			System.out.println("2");
			ra.addFlashAttribute("msg","등록에 실패했습니다.");
		}
		mav.setViewName("redirect:/walkListPage");
		System.out.println("3");
		return mav;
		
		
	}
	
	
	
	// 전체&검색 페이징처리
		public String walkPaging(int page, String searchType, String searchWord, String searchAddr) {
			System.out.println("ajax 전체 페이징 page:" +page+" /searchType:"+searchType+" /searchWord:"+searchWord+" /searchAddr:"+searchAddr);
			Gson gson = new Gson();
			//디폴드값을 받아오므로 바로 page를 사용할 수 있습니다.
			System.out.println("페이지 번호 : " + page);
			
			//전체or검색결과 글 개수를 담을 변수를 선언합니다.
			int boardTotalCount =0;
			
			if(searchAddr.equals("전체지역")) {
				searchAddr="";
			}
			System.out.println("searchAddr:"+searchAddr);
			boardTotalCount = wkdao.selectWalkSearchListCount(searchType,searchWord,searchAddr);
			System.out.println("검색단어 글 개수를 가져옵니다 : " + boardTotalCount);
			
			//한 페이지에 보여줄 글 갯수 
			int onePageHowManyBoards  = 6;
			
			// 한 페이지에 보여줄 페이지 번호 개수
			int pagingNumCutCount  = 5;
			
			// 한 페이지 의 시작 페이지 번호
			
			int startCutNum  = (page - 1) * onePageHowManyBoards  + 1;
			System.out.println("한 페이지의 시작 페이지 번호 : " + startCutNum );
			
			// 한 페이지 의 끝 페이지 번호
			int endCutNum  = page * onePageHowManyBoards ;
			System.out.println("한 페이지 의 끝 페이지 번호 : " + endCutNum );
	
			
			System.out.println("boardTotalCount:"+boardTotalCount);
			// ceil = 소수점 반올림
			// maxPage = 전체페이지 번호 
			int maxPage = (int)( Math.ceil(  (double)boardTotalCount/onePageHowManyBoards) );
			
			// 첫번째 페이지 번호
			int startPage = (int) (( Math.ceil( (double) page/pagingNumCutCount  )) -1) * pagingNumCutCount  + 1;
			
			// 마지막 페이지 번호
			int endPage = startPage + pagingNumCutCount  -1;
			
			if(endPage > maxPage) {
				
				endPage = maxPage;
				
			}
			
			System.out.println("첫번째 페이지 번호 : " + startPage);
			System.out.println("마지막 페이지 번호 : " + endPage);
			System.out.println("최대 페이지 번호 : " + maxPage);
			
			ArrayList<WalkboardDto> boardPagingList = new ArrayList<WalkboardDto>();
			
			
			boardPagingList = wkdao.selectWalkSearchPagingList(startCutNum ,endCutNum ,searchType,searchWord,searchAddr);
			

			for(int i = 0; i < boardPagingList.size(); i++) {
				
				
				  String content = boardPagingList.get(i).getWalk_content(); 
				  System.out.println("객체의 본문내용 : "+content);
				  
				  String content_replace = content.replace("src=", " ").replace("<p>&nbsp;</p>", " ");
				  System.out.println("변경후 :"+content_replace);
				  
				  boardPagingList.get(i).setWalk_content(content_replace);
				  
				boardPagingList.get(i).setPage(page);
				boardPagingList.get(i).setMaxPage(maxPage);
				boardPagingList.get(i).setStartPage(startPage);
				boardPagingList.get(i).setEndPage(endPage);
				
			}

			String boardPagingList_gson = gson.toJson(boardPagingList);
			
			return boardPagingList_gson;
		}

		//산책모집 목록 리스트 페이지 이동과 정보저장
		public ModelAndView walkListPage(String searchId,RedirectAttributes ra) {
			System.out.println("목록리스트 페이지 이동 정보저장");
			mav = new ModelAndView();
			//로그인 정보가 있으면 실행
			if(searchId!=null) {
				//로그인 정보로 지역 검색
				String addr = wkdao.selectMemberAddr(searchId);
				
				String firstAddr=addr.split(" ")[0];
				
				System.out.println("firstAddr:"+firstAddr);
				
				mav.addObject("firstAddr",firstAddr);
				mav.setViewName("walk/WalkList");
			}else {
				ra.addFlashAttribute("msg","로그인 후 이용하실 수 있습니다.");
				mav.setViewName("walk/WalkList");
			}
			return mav;
		}
		
		//산책'상세'페이지
		public ModelAndView walkViewPage(String walkBoardCode, String searchId,RedirectAttributes ra) {
			System.out.println("산책 상세 페이지 이동요청:서비스클래스");
			mav = new ModelAndView();
			//조회수를 하나 올립니다. 
			wkdao.updatereviewhits(walkBoardCode);
			//회원의 지역과 강아지 무게 제한요건을 위한 모집상세 정보를 가져옵니다.
			WalkboardDto walkBoardInfo = wkdao.selectWalkViewInfo(walkBoardCode);
			//참여하려는 회원의 지역을 가져옵니다. 
			String memberLocalAddr = wkdao.selectMemberLocalAddr(searchId);			
			//참여하려는 회원의 강아지 무게코드를 가져옵니다.
			MembersDto memberDogInfo = walkMembersDogWC(searchId);
			System.out.println(searchId);
			//모집글의 지역 일치 여부체크, 강아지 무게제한에 한마리도 적합하지 않는 회원일경우 페이지 이동을 금지하고 안내알람을 띄웁니다.				
			int check = 0;
			
			System.out.println(walkBoardInfo.getWalk_startaddr().split(" ")[1]+")와("+memberLocalAddr.split(" ")[0]);
			System.out.println("memberDogInfo.getDogsWeightCode():"+memberDogInfo.getDogsWeightCode()+":");
			if(walkBoardInfo.getWalk_startaddr().split(" ")[1].equals(memberLocalAddr.split(" ")[0])) {//지역이 일치한다면,
				for(int i =0; i<3; i++) {//강아지 무게제한도 참여할 수 있는 요건일때
					if (!memberDogInfo.getDogsWeightCode().split("/")[i].equals("----") && memberDogInfo.getDogsWeightCode().split("/")[i].equals(walkBoardInfo.getWalk_bodytype().split("/")[i])) {
						check=1;
					}
				}	
				if(memberDogInfo.getDogsWeightCode().equals("----/----/----")) {
					check=3;
				}
			}else {
				check=2;
			}
			
			//for문을 나온 후 false라면 참여할 수 없는 조건입니다.  true라면 참여할 수 있습니다.
			if(check==1) { //참여할 수 있는 조건이라면
				mav.addObject("walkBoardInfo",walkBoardInfo);
				mav.setViewName("walk/WalkView");
			}else if(check==0){//참여할 수 없다면
				ra.addFlashAttribute("msg","강아지 무게 제한으로 참여할 수 없습니다.");
				mav.setViewName("redirect:/walkListPage");
			}else if(check==2) {
				ra.addFlashAttribute("msg2","지역이 달라 참여할 수 없습니다.");
				mav.setViewName("redirect:/walkListPage");
			}else if(check==3) {
				ra.addFlashAttribute("msg2","강아지 등록 후 이용하실 수 있습니다.");
				mav.setViewName("redirect:/walkListPage");
			}
			System.out.println("check:"+check);
			//무게제한에 기르는 강아지들중 한마리라도 적합하다면 페이지 이동을 합니다. 
			
			//페이지 이동 시 해당 산책글의 정보를 객체에 담아 보냅니다.
			
			return mav;
		}

		//댓글등록
		public String walkRecomment(RecommentDto recomment) {
			System.out.println("walkRecomment:댓글 등록요청 서비스클래스");
			mav = new ModelAndView();
			//댓글번호 만들고 등록
			//가장최근 댓글 번호 가져오기
			
			String MaxCode = wkdao.selectWalkRecommentMaxCode();
			System.out.println("MaxCode:"+MaxCode);
			if(MaxCode == null) {
				MaxCode="RC001";
			}else {
				int MaxCodeNum =Integer.parseInt(MaxCode.substring(2,5))+1;
				if(MaxCodeNum<10) {
					MaxCode="RC00"+ MaxCodeNum;
				}else if(MaxCodeNum<100) {
					MaxCode="RC0"+ MaxCodeNum;
				}else if(MaxCodeNum<1000) {
					MaxCode="RC"+ MaxCodeNum;
				}
			}
			recomment.setRecomment_code(MaxCode);
			System.out.println("recomment:"+recomment);
			//댓글 등록
			int result = wkdao.insertWalkRecomment(recomment);
			
			
			//해당 게시글에 댓글 수 하나 추가 업데이트
			wkdao.updateWalkReplycount(recomment);
			
			String Result="";
			if(result>0) {
				Result="OK";
			}else {
				Result="NO";
			}
			return Result;
		}


		public String walkRecommentView(String boardCode) {
			ArrayList<RecommentDto> recommentList= new ArrayList<RecommentDto>();
			recommentList = wkdao.selectWalkRecomment(boardCode);
			System.out.println("출력할 댓글 리스트 내용:"+recommentList);
			Gson gson = new Gson();
			String RecommentList = gson.toJson(recommentList);
			return RecommentList;
		}

		//댓글삭제
		public String walkRecommentDelState(String recommentCode) {
			System.out.println("댓글삭제 서비스 이동:"+recommentCode);
			
			String boardcode = wkdao.selectWalkBoardCode(recommentCode);
			int result1 = wkdao.walkRecommentDelState(recommentCode);
			String result = "";
			if(result1>0) {
				result ="OK";	
				//해당 게시글에 댓글 수 하나 삭제 업데이트
				wkdao.updateWalkDelReplycount(boardcode);
			}else {
				result="NO";
			}
			return result;
		}


		public String walkRecommentModify(RecommentDto boardInfo) {
			System.out.println("댓글수정 서비스 이동");
			int result1 = wkdao.walkRecommentModify(boardInfo);
			String result = "";
			if(result1>0) {
				result ="OK";				
			}else {
				result="NO";
			}
			return result;
		}


		public ModelAndView walkDelState(String boardCode,RedirectAttributes ra) {
			System.out.println("산책 글 삭제 요청:서비스클래스:" + boardCode);
			mav = new ModelAndView();
			int result = wkdao.walkDelState(boardCode);
			
			if(result>0) {				
				ra.addFlashAttribute("msg","삭제가 완료되었습니다.");
				mav.setViewName("redirect:/walkListPage");
			}else {
				ra.addFlashAttribute("msg","삭제에 실패했습니다.");
				mav.setViewName("redirect:/walkViewPage?walkBoardCode="+boardCode);
			}
			
			return mav;
		}


		public ModelAndView walkViewModifyPage(String boardCode, RedirectAttributes ra) {
			System.out.println("산책 글수정페이지이동 요청:서비스클래스:" + boardCode);
			mav = new ModelAndView();
			
			//수정할 글의 모든 정보를 담은 객체꺼내기
			WalkboardDto walkboard = wkdao.selectWalkboardInfo(boardCode);
			String searchId = (String)(session.getAttribute("loginId"));		
			//사용자 아이디값 매개변수로 MembersDto객체로 리턴됩니다.
			MembersDto memberDto = walkMembersDogWC(searchId);
			
			System.out.println("수정페이지로 갈 글정보:"+walkboard);
			mav.addObject("walkBoardInfo",walkboard);
			mav.addObject("memberDto",memberDto);
			mav.setViewName("walk/WalkViewModify");
			return mav;
		}


		public ModelAndView walkViewModify(WalkboardDto boardInfo, RedirectAttributes ra) {
			System.out.println("산책 글수정 요청:서비스클래스:" + boardInfo);
			mav = new ModelAndView();
			
			
			int result= wkdao.updateWalkViewInfo(boardInfo);
			if(result>0) {
				ra.addFlashAttribute("msg","수정하였습니다.");
				mav.setViewName("redirect:/walkViewPage?walkBoardCode="+boardInfo.getWalk_code());
			}else {
				ra.addFlashAttribute("msg","수정 실패");
				mav.setViewName("redirect:/walkViewPage?walkBoardCode="+boardInfo.getWalk_code());
			}
			return mav;
		}

		//산책글 참가요청

		public ModelAndView walkViewJoin(String searchId, String boardCode, RedirectAttributes ra) {
			System.out.println("산책 참가요청:서비스클래스:" + boardCode);
			mav = new ModelAndView();
			
			//해당 산책 게시글의 mid와 people 를 불러와 이미 가입된 사람인지, 남은 자리는 있는지 체크합니다.
			WalkboardDto wkdto = wkdao.selectWalkboardInfo(boardCode);
			
			String arrayMidList[] = wkdto.getWalk_mid().split("/");
			String midList="";
			String result = "";

			if (wkdto.getWalk_people() <= arrayMidList.length) {
				result="PEOPLE";
			}
			
			for(int i =0; i <arrayMidList.length; i++) {
				if(arrayMidList[i].equals(searchId)) {
					result="NO";
				}
			}
			
			if (result.equals("NO")) {
				ra.addFlashAttribute("msg","이미 참여하셨습니다.");
				mav.setViewName("redirect:/walkViewPage?walkBoardCode="+boardCode);
			}else if(result.equals("PEOPLE")){
				ra.addFlashAttribute("msg","최대 인원수에 도달한 모집글입니다.");
				mav.setViewName("redirect:/walkViewPage?walkBoardCode="+boardCode);
			}else {
			
				midList = wkdto.getWalk_mid()+"/"+searchId;
				
				int updateResult = wkdao.updateWalkViewJoin(boardCode, midList);
				if(updateResult > 0) {
					ra.addFlashAttribute("msg","등록되었습니다.");
					mav.setViewName("redirect:/walkViewPage?walkBoardCode="+boardCode);
				}
			}

			
			return mav;
		}


		public ModelAndView walkViewLeave(String searchId, String boardCode, RedirectAttributes ra) {
			System.out.println("산책 탈퇴요청:서비스클래스:" + boardCode);
			mav = new ModelAndView();
			WalkboardDto wkdto = wkdao.selectWalkboardInfo(boardCode);
			String arrayMidList[] = wkdto.getWalk_mid().split("/");
			String midList ="";
			
			for(int i =0; i <arrayMidList.length; i++) {
				
				if(!arrayMidList[i].equals(searchId) && i < (arrayMidList.length)) {
					midList += "/"+arrayMidList[i];
				}
			}			
			midList=midList.replace("/","");
			
			int updateResult = wkdao.updateWalkViewLeave(boardCode, midList);
			
			if(updateResult > 0) {
				ra.addFlashAttribute("msg","탈퇴되었습니다.");
				mav.setViewName("redirect:/walkViewPage?walkBoardCode="+boardCode);
			}
			return mav;
		}


		public String walkRecommentReport(ReportDto rcReport) {
			String result="";
			//report테이블에 해당 댓글코드에 해당 아이디가 있는지 검색한 후 0이면 신고기능을 수행하고, 1이면 신고 실패 알람을 보낸다.
			int count = wkdao.selectWalkRecommentReport(rcReport);
			
			if(count==0) {//신고기능수행
				
				//report테이블에 insert한다.
				wkdao.insertWalkRCReport(rcReport);
				
				//해당 댓글의 신고수를 1개 올린다.
				wkdao.updateRecommentReport(rcReport);
				result="OK";
				
			}else {//신고기능못함(이미신고함)
				result = "NO";
			}
			return result;
		}


}
