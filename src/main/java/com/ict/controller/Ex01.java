package com.ict.controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// URL mapping => 프로젝트 명/@WebServlet 명 = 주소창 
@WebServlet("/Ex01")
public class Ex01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	// 이 다음 부터는 기본 생성자 생략한다.
    public Ex01() {
        System.out.println("생성자()");
    }

	public void init(ServletConfig config) throws ServletException {
		// 생성자를 대신해서 멤버 초기화를 할 수 있다.
		// 보통 안부르는데 멤버초기화 필요할때 부르면 된다.
		// init() 이 끝나면 자동으로 service() 로 넘어간다.
		System.out.println("init()");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request => 요청 정보를 가지고 있는 객체 (클라이언트 => 서버)
		// response => 응답 정보를 가지고 있는 객체 (서버 => 클라이언트)
		// 클라이언트의 요청방식에 따라 알맞는 메소드를 호출하는 역활을 한다.
		// 요청방식 - get 방식(default) => request 가 get 방식이면 doGet 메소드 실행
		//          - post 방식 => request 가 post 방식이면 getMethod 메소드 실행
		System.out.println("service()");
		if(request.getMethod().equalsIgnoreCase("get")) { // 요청의 메소드 방식을 받는데 대소문자 구분없이 get 이냐
			doGet(request, response);
		}else if(request.getMethod().equalsIgnoreCase("post")) { // 요청의 메소드 방식을 받는데 대소문자 구분없이 post 이냐
			doPost(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get()");
		// 자바에 HTML 사용
		// 클라이언트가 보는 화면에 보여주는데 Served at: 를 body에 추가해주세요
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post()");
		doGet(request, response); // post 방식이여도 다시 doGet() 로 돌려서 doGet() 메소드에서 한번에 코딩하면됨
	}

	public void destroy() { // 톰캣에서 프로젝트가 빠져나올 때 실행됨
		System.out.println("destroy()");
	}
}
