// test to see if script is linked to html file
console.log("Script Activated!");

// manipulate DOM by changing font of paragraph
var paragraph = document.getElementById("paragraph");
paragraph.style.fontFamily = "Helvetica";

// change table border and background color when it is clicked
function changetable(event) {
	event.target.style.border = "1px solid blue";
	event.target.style.backgroundColor = "red";
}

var table = document.getElementById("table");
table.addEventListener("click", changetable);

// create new HTML element with JS and add to page
var para = document.createElement("p");
var node = document.createTextNode("This is new.");
para.appendChild(node);

var element = document.getElementById("container");
element.appendChild(para);