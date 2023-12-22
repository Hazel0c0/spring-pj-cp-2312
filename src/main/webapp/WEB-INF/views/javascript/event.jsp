<%--
  Created by IntelliJ IDEA.
  User: Hazel
  Date: 2023-12-22
  Time: 오전 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h3>event page</h3>


<!-- 버튼 예시 1: 경고창 띄우기 -->
<button type="button" id="alertBtn">Alert</button>

<!-- 버튼 예시 2: 콘솔에 메시지 출력 -->
<button type="button" id="consoleBtn">Console Log</button>

<!-- 버튼 예시 3: 페이지 이동 -->
<button type="button" id="redirectBtn">Redirect : jq-e</button>


</body>
</html>

<script>
    // 경고창 띄우기
    document.getElementById("alertBtn").addEventListener("click", function() {
        alert("경고! 이 작업은 실행되지 않습니다.");
    });

    // 콘솔에 메시지 출력
    document.getElementById("consoleBtn").addEventListener("click", function() {
        console.log("버튼이 클릭되었습니다.");
    });

    // 다른 페이지로 이동
    document.getElementById("redirectBtn").addEventListener("click", function() {
        window.location.href = "../jQuery/event"; // 이동할 페이지 경로를 적어주세요.
    });
</script>