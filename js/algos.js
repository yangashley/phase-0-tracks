// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason through this based on what you already know, rather than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.
//Add driver code that tests your function on a few arrays.

//Pseudocode 
//Create a variable equal to 0 called phrase_length
//Iterate through each phrase in the array to check for the length of the phrase
//Store the phrase and length of each phrase as keys and values in an object
//Iterate through the object 
	//IF the length of the phrase is greater than the value phrase_length, set the variable to equal the length of the phrase
//After iteration when the longest length has been returned, use the phrase length (value) to find the phrase (key).
//Print the key to show which phrase is the longest.


