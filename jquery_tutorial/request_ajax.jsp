<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
<%
    String city = request.getParameter("city");
    String zipcode = request.getParameter("zipcode");

    out.println("도시: " + city);
    out.println("우편번호: " + zipcode);
%>
</body>

</html>