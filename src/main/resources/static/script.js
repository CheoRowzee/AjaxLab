///**
// * 
// */
var btn = getElementById("btn");
var hofDiv= getElementById("info")


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
	hofDiv.insertAdjacentHTML("beforeend", string);
}

