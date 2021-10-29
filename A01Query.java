package com.company.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class A01Query extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//getParmeter은 값을 모두 문자열로 가지고 온다.
		//Wrapper Class를 이용하여 적절하게 타입을 변경해서 사용해야 한다.
		String name= request.getParameter("name");
		String id= request.getParameter("id");
		String password= request.getParameter("password");
		String address= request.getParameter("address");
		int qty= Integer.parseInt(request.getParameter("qty")); //데이터가 넘어가지 않을때 null 이 넘어오는데 null은 int로 변경할 수 없다.
		String email= request.getParameter("email");
		String url= request.getParameter("url");
		String date= request.getParameter("date");
		String comment= request.getParameter("comment");
		String baseball= request.getParameter("baseball");
		String[] four= request.getParameterValues("four");
		String base= request.getParameter("base");
		String[] five= request.getParameterValues("five");
		String upload= request.getParameter("upload");
		
		out.println("<h1>Form Data Value - GET</h1>"+"<br>");
		out.println("Name :" +name+"<br>");
		out.println("id :" +id+"<br>");
		out.println("password :" +password+"<br>");
		out.println("address :" +address+"<br>");
		out.println("qty :" +qty+"<br>");
		out.println("email :" +email+"<br>");
		out.println("url :" +url+"<br>");
		out.println("date :" +date+"<br>");
		out.println("comment :" +comment+"<br>");
		out.println("baseball :" +baseball+"<br>");
		for(int i=0; i<four.length;i++) {
			out.println("4강팀" + (i+1) + ": " +four[i]+"<br>");
		}
		out.println("base :" +base+"<br>");
		for(int i=0; i<five.length;i++) {
			out.println("5강팀" + (i+1) + ": " +five[i]+"<br>");
		}
		out.println("upload :" +upload+"<br>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//getParmeter은 값을 모두 문자열로 가지고 온다.
		//Wrapper Class를 이용하여 적절하게 타입을 변경해서 사용해야 한다.
		//form.html 의 <meta charset="UTF-8"> 의 인코딩 타입으로 설정해야 한다.
		//사용자가 폼으로 전달한 값을 받기 전에 전달된 인코딩 값을 설정해야 한다.
		request.setCharacterEncoding("UTF-8"); //response.setContentType("text/html;charset=UTF-8"); 은 응답할때
		//얘는 요청할 때
		String name= request.getParameter("name");
		String id= request.getParameter("id");
		String password= request.getParameter("password");
		String address= request.getParameter("address");
		
		//post는 enctype="multipart/form-data"로 하면 에러발생 , 다른 jar파일 갖다 써야함
		int qty= Integer.parseInt(request.getParameter("qty")); //데이터가 넘어가지 않을때 null 이 넘어오는데 null은 int로 변경할 수 없다.
	
		String email= request.getParameter("email");
		String url= request.getParameter("url");
		String date= request.getParameter("date");
		String comment= request.getParameter("comment");
		String baseball= request.getParameter("baseball");
		String[] four= request.getParameterValues("four");
		String base= request.getParameter("base");
		String[] five= request.getParameterValues("five");
		String upload= request.getParameter("upload");
		
		out.println("<h1>Form Data Value - POST</h1>"+"<br>");
		out.println("Name :" +name+"<br>");
		out.println("id :" +id+"<br>");
		out.println("password :" +password+"<br>");
		out.println("address :" +address+"<br>");
		out.println("qty :" +qty+"<br>");
		out.println("email :" +email+"<br>");
		out.println("url :" +url+"<br>");
		out.println("date :" +date+"<br>");
		out.println("comment :" +comment+"<br>");
		out.println("baseball :" +baseball+"<br>");
		for(int i=0; i<four.length;i++) {
			out.println("4강팀" + (i+1) + ": " +four[i]+"<br>");
		}
		out.println("base :" +base+"<br>");
		for(int i=0; i<five.length;i++) {
			out.println("5강팀" + (i+1) + ": " +five[i]+"<br>");
		}
		out.println("upload :" +upload+"<br>");
		out.close();
	}
}
