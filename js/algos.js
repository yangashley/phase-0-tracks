//Pseudocode 

//Input: Array of phrases
//Steps:
	//Create a variable equal to the first phrase in the array called phrase_length
	//Iterate through each phrase in the array to check for the length of the phrase
		//IF the length of the phrase is greater than the value phrase_length, set the variable to equal the length of the phrase
	//Return the value of the longest phrase in the array
//Output: longest phrase in array

// an array with phrases

function longest_phrase(array) {
	longest_length = array[0]
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longest_length.length) {
			(longest_length = array[i]);
		}
	}
	return longest_length;
};

// A function that takes two objects and checks to see if the objects share at least one key-value pair.
//Input: 2 Objects
//Steps:
	//Compare the pairs from each object. 
		//IF the pairs are the same, return true.
		//IF the pairs are not the same, return false.
//Output: boolean (true if there is a match, false if there is not a match).

function match_pairs(object_1, object_2){

	if(object_1.name == object_2.name){
		return true;
	} else if (object_1.age == object_2.age){
		return true;
	} else {
		return false;
	}
}


// driver code for longest_phrase function
var array = new Array("long phrase", "even longer phrase", "longer phrase", "longest phrase");

console.log(longest_phrase(array));

// driver code for match_pairs function
var object_1 = {name: 'Ashley', age: 25};

var object_2 = {name: 'Colin', age: 25};

var object_3 = {name: 'Marisa', age: 24};

console.log(match_pairs(object_1, object_2));
console.log(match_pairs(object_2, object_3));



