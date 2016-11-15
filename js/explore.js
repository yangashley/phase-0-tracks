// Pseudocode to create a method that takes a string and reverses it
// Turn a string into an array 
// Reverse the characters in the array
// Join the reversed characters back together into a string

function reverseString(string) {

var splitString = string.split("");
var reverseArray = splitString.reverse();
var joinString = reverseArray.join("");
return joinString;
}

reversed_string = reverseString("hello");

if (1==1) {
	console.log(reversed_string);
}

