package com.GroupProject.chating;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.GroupProject.dao.CrewDao;
import com.GroupProject.dto.ChatDto;
import com.google.gson.Gson;

public class GroupCrewChating extends TextWebSocketHandler {

	private ArrayList<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	
	@Autowired
	private CrewDao crdao;
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		System.out.println("컨트롤러>>채팅방 입장시 실행되는 메소드");
		System.out.println("session.getId()[websocket에 접속할 때 반드시 기본으로 생성되는 고유 아이디 값이 있는데, 그 값을 출력함]");
		
		//세션값 확인용출력
		System.out.println(session.getId());
		
		//세션값 Array리스트에 저장
		sessionList.add(session);
		
		//위 Array리스트에 저장된 세션개수(채팅방인원수)출력
		System.out.println("채팅방 인원수: "+sessionList.size());
		
		//맵겍체로 세션의 모든 정보를 저장.
		Map<String, Object> sessionInfoMap = session.getAttributes();
		
		//맵객체에서 크루코드 추출
		String crewCode = (String)(sessionInfoMap.get("crewCode"));
		
		//크루코드를 이용하여 채팅 테이블 내용 가져옴.
		ArrayList<ChatDto> chatList = crdao.selectCrewChatList(crewCode);
		System.out.println("출력할 채팅 내용>>"+chatList);
		Gson gson = new Gson();
		
		//가져온 채팅 이력을 다시 입장한 사람 페이지에 보냄.
		session.sendMessage(new TextMessage( gson.toJson(chatList)));	
		
		
		
	}

	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("컨트롤러>>채팅방 떠날때 실행되는 메소드");
		System.out.println("떠난이의 세션아이디: "+session.getId());
		//Array리스트에서 떠난이의 세션아이디 제거
		sessionList.remove(session);
		//남은 채팅방인원수 출력
		System.out.println("sessionList.size() : "+sessionList.size());
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("컨트롤러>>메세지 전송시 실행되는 메소드");
		System.out.println("메세지 전송한 이의 세션아이디: "+session.getId());
		System.out.println("message.getPayload()[json형식의 Dto이름으로 통일하여 사용한다. 메세지의 내용이다.] : ");
		System.out.println("메세지 원문:"+message.getPayload());
		
		Gson gson = new Gson();
		
		//스크립트에서 받은 json형식=> java(Dto)객체로 변환.
		ChatDto chatMsg = gson.fromJson(message.getPayload(), ChatDto.class);
		
		System.out.println(chatMsg);

		
		//채팅 내용을 채팅 테이블에 저장
		crdao.insertCrewChat(chatMsg);
		//날짜 추가 입력하기 (출력용)
		
		ChatDto sendMsg = crdao.selectCrewChat(chatMsg.getChat_code());
		
			//채팅방 사람들을 검색함
			for(int i = 0; i < sessionList.size(); i++) {
				//그중 메세지 보낸 사람이 아닌 다른사람들이면
				if(!sessionList.get(i).getId().equals(session.getId())){ 

					
					//세션들의 각종 세션정보값을 java(String타입)객체로 만든다.
					//로그인 상태로 이렇게 Map객체로 만들어 출력하면, 우리가 만들었던 로그인 정보, 세선로그인아이디, 프로필사진, http세션아이디 등이 나온다.
					Map<String, Object> sessionMap = sessionList.get(i).getAttributes();
					//세션아이디가 아닌 로그인한 아이디를 사용하여
					String LoginMid = (String)sessionMap.get("loginId");
					System.out.println("LoginMid : "+LoginMid);
					//해당 세션 아이디안에 로그인아이디가 존재한다면
					if(LoginMid != null) {
						//그 세션아이디에다가 메세지를 보낸다. 자바=>json 변환. 스크립트로 보낼때는 무조건 json형식이어야 한다.
					sessionList.get(i).sendMessage(new TextMessage( gson.toJson(sendMsg)));
					
					}
					
				}
	
			}
					
		
		
		
		
		
		
	}


	
}
