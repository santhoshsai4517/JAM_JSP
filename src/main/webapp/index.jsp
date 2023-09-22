<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>JAM</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./styles.css">
</head>

<body>
	<!-- <button id="openModal">Open Modal</button> -->
	
	<div class="header">
		<p class="space" align="center">
			<font color="gainsboro" size=150px">J A M</font>
		</p>
	</div>
	<div class="nav">
		<p class="space" align="center">
			<font size="150px">&nbsp;JUST A MINUTE</font>
		</p>
	</div>
	</div>
	<center id="content">
		<%
		for (int i = 1; i <= 70; i++) {
			if (i < 10) {
		%>

		<a href="topics?id=<%=i%>" >0<%=i%></a>
		<%
		} else {
		%>
		<a href="topics?id=<%=i%>" ><%=i%></a>

		<%
		}

		}
		%>
	</center>
</body>

<html>