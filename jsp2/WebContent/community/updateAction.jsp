<%@page import="dao.FreeboardDao"%>
<%@page import="dto.Freeboard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	Freeboard dto = new Freeboard();
	FreeboardDao dao = FreeboardDao.getInstance();
	dto = dao.getOne(idx);
	
	request.setAttribute("bean", dto);
	pageContext.forward("updateView.jsp");

%>