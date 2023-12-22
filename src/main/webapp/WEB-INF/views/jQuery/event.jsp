<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Using jQuery</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>Using jQuery</h1>

<button id="myButton">Click me!</button>

<script>
    // jQuery 사용 예시: 버튼 클릭 시 메시지 출력
    $(document).ready(function(){
        $("#myButton").click(function(){
            alert("버튼이 클릭되었습니다.");
        });
    });
</script>
</body>
</html>
