<html>
<body>
<h2>index page</h2>

<button type="button" id="event_btn_js">event-js</button>
<button type="button" id="event_btn_jq">event-jq</button>

</body>
</html>


<script>
    document.getElementById("event_btn_js").onclick = function() {
        // 다른 페이지로 이동
        window.location.href = "javascript/event"; // event.jsp 이동
    };
    document.getElementById("event_btn_jq").onclick = function() {
        window.location.href = "jQuery/event";
    };
</script>
