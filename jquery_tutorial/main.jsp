<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="../js/jquery-1.12.4.js"></script>
    <script>
        function sendRequest() {
            var httpRequest = new XMLHttpRequest(arguments);
            httpRequest.open("POST", "request_ajax.jsp", true);
            httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            httpRequest.send("city=Seoul&zipcode=55775");
            httpRequest.onreadystatechange = function () {
                if (httpRequest.readyState == XMLHttpRequest.DONE && httpRequest.status == 200) {
                    document.getElementById("text").innerHTML = httpRequest.responseText;
                }
            }
        }
    </script>
</head>

<body>
    <h1>POST 방식의 요청</h1>
    <button type="button" onclick="sendRequest()">POST 방식으로 요청 보내기~!</button>
    <p id="text"></p>
</body>

</html>