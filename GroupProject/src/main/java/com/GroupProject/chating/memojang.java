package com.GroupProject.chating;

public class memojang {
	/*
	 
	private ArrayList<WebSocketSession> sessionList= new ArrayList<WebSocketSession>();
	▷▷WebSocketSession의 session이나 HttpSession의 session은 동일한 세션이지만 사용방법이 다르다.

	예를들면 웹소켓세션객체는 session.setAttribute를 사용할 수 없다. 근데 내용은 동일하게 담고있다.

	객체의 내용은 동일하되 그걸 꺼내고 입력하는 주요 기능이 다르기때문에 (아무래도 웹소켓은 추가된 라이브러리니까 웹소켓용기능만 쓸수있도록 만들어진 것 같다.) 헷갈리지 않도록 하자. 

	​

	​

	​

	﻿Map<String, Object> sessionMap = session.getAttributes()
	▷▷Object는 모든 종류의 변수타입을 담는다는 의미이다. (java의 모든 클래스는 Object 클래스를 상속받는다는 것을 기억하자.)

	세션들의 각종 세션정보(getAttributes():: 등록된 세션들을 말한다) 값을 java객체(String타입)로 만든다는 말이다. 로그인 상태에서  이렇게 맵형식으로 만들고 출력해보면, 세션에 등록했던 로그인아이디, 프로필사진경로, http세션아이디가 나온다. 

	​

	​

	session.getId()
	▷▷websocket에 접속할때 반드시 기본으로 생성되는 고유 아이디 값이 있는데, 그걸 확인할때 쓴다.

	​

	​

	(참고: 접속전에 로그인을 하였다면 (세션을 생성할때 설정한 아이디로된 )로그인이라는 이름의 세션아이디가 있을것이고(우리가 별도로 만든 세션정보이다. 자동으로 만들어지는 세션정보랑 다른 추가 세션정보라고 생각하자.), 웹소켓 접속 시에 기본생성되는 아이디또한 이 세션정보와 함께 담아지게 되어, 생성될때 로그인 상태에 따라 session에는 로그인세션에 해당하는 아이디가 들어있을 수도, 비어있을 수도 있다.)

	​

	​

	​

	message.getPayload()
	▷▷JSP의 스크립트에서 sock객체를 이용하여 메세지를 보낼때 Dto에 등록한 이름으로(json 형식) 보내게 되는데

	(편의상 이름을 동일하게 맞춰 작업하는게 편하다) 이 메세지의 내용을 확인 할 수 있다.

	​

	​

	​

	​

	WebsocketTestDto wdto = gson.fromJson(message.getPayload(), WebsocketTestDto.class);
	▷▷스크립트에서 받은 json형식의 메세지 내용을 java객체(Dto클래스)로 변환하는 내용.

	​

	​

	​

	​

	session.sendMessage(new TextMessage(gson.toJson(wdto)));
	▷▷해당 세션이 위치한 클라이언트에게 (session) 메세지를 보내는데 sendMessage(new TextMessage()),

	세션에서 메세지를 받았던 내용을 그대로 보내려면 message.getPayload() 를 쓰면 되고,

	지금처럼 dto객체의 내용을 보내고 싶으면 gson을 이용하여 json으로 변환한 후(gson.toJson(wdto)))에 보내면 된다. message를 세션에 보낼때(스크립트로 보낼때)는 무조건 json형식으로 보내야 한다는걸 기억하자. 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

*/}
