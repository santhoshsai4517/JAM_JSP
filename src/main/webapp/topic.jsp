<%@page import="com.scode.model.Topic"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./styles.css"/>

</head>
<body>
	<%
	Topic topicObj = (Topic) request.getAttribute("topic");
	int id = topicObj.getId();
	String topic = topicObj.getTopic();
	%>
			<div id="header">
				<p align="center">
					<font color="white" size="200">JAM</font>
				</p>
			</div>
			<hr />
			<div style="background-color: white" align="center">
				<font color="teal" size="150" id="topicId">Topic-<%=id%></font><br />
				<font size="150" id="topic"><%= topic %></font> <br /> <br /> <br /> <br />
				<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
				<div id="countdown">Time left: 120 seconds</div>
				<br /> <font size="150" id="next">Next number is <%= topicObj.getNextNumber() %></font>
			</div>
		
</body>
<script type="module" src="./topicpage.js"></script>
</html>