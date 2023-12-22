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

<input type="text" id="change_btn" placeholder="Type something here...">


<script>

    // $(document).ready(function () {
    $(() => {

        $("#myButton").click(function () {
            alert("버튼이 클릭되었습니다.");
        });

        $('#change_btn').change(function () {
            alert('Input value changed!');
        });
    });


</script>
</body>
</html>
