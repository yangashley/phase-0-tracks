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
	} else if (object_1.pet == object_2.pet){
		return true;
	} else {
		return false;
	}
}

// A function that takes an integer for length, and builds and returns an array of strings of the given length.

//Input: Integer (3)
//Steps:
	//Write a function that generates a random number to determine how long a random word will be
	//Write a function that generates a random word with any letter in the alphabet that is the length of the random number generated
	//Write a function that calls the two functions above and will returns an array of the random words created 
//Output: Array with strings, depending on integer passed as argument(["ddds", "uhni", "wnod"])

function random_data(integer){
	var words_array = [];
	var times = integer;
	for (var i =0; i < times; i++){
		var length = rand_num();
		words_array[i] = rand_word(length);
	}
	return words_array
}

function rand_num() {
	var word_length = Math.floor(Math.random() * 10) +1;
	return word_length;
}

function rand_word(length) {
	var word = "";
	var letters = "abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < length; i++)
		word += letters.charAt(Math.floor(Math.random() * 10) +1);
	return word
}

// driver code for longest_phrase function
var array = new Array("long phrase", "even longer phrase", "longer phrase", "longest phrase");

console.log(longest_phrase(array));

//driver code for match_pairs function
var object_1 =  {name: 'Ashley', age: 25, pet: "fish"};

var object_2 = {name: 'Colin', age: 25, pet: "cat"};

var object_3 = {name: 'Marisa', age: 24, pet: "fish"};

//should return true because they have same age
console.log(match_pairs(object_1, object_2));
//should return false because they have no matching pairs.
console.log(match_pairs(object_2, object_3));
//should return true because they have the same pet
console.log(match_pairs(object_1, object_3));

// driver code for random_data function: 10 times generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.
console.log(random_data(1));
console.log(random_data(5));

var random_words_array = [];

for (var i = 0; i < 10 ; i++) {
	random_words_array.push(random_data(i));
}

console.log(longest_phrase(random_words_array));


