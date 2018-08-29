<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/minty/bootstrap.min.css" />
</head>
<body>
<div class= "container"></div>

<h1>Science| Hall of Fame</h1>

<button id = "btn">Click for the Science Hall of Fame</button>
<div id = "info"></div>


<script type="text/javascript">

var btn = getElementById("btn");
var hofDiv= getElementById("info");


btn.addEventListener("click", function() { var request = new XMLHttpRequest();
request.open("GET", "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json" );
request.send();
request.onload() = function()  {
var data = JSON.parse(request.responseText);
renderHTML(data);
}


});

function renderHTML(store)  {
	var string = "<p>" + store.firstName + "</p>";
	hofDiv.insertAdjacentHTML("beforeend", htmlString);
}




</script>
</body>
</html>