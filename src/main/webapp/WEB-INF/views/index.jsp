<html>
<body>
<h2>index page</h2>

<button type="button" id="eventBtn">event</button>

</body>
</html>


<script>
    document.getElementById("eventBtn").onclick = function() {
        // 다른 페이지로 이동
        window.location.href = "/javascript/event"; // event.jsp 이동
    };
</script>
