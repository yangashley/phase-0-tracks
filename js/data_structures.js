colors = ["brown", "grey", "black", "white"];
names = ["Ed", "Sunshine", "Nightmare", "Thunder"];

colors.push("tan");
names.push("Bob");

//create an empty object, horses
//use a for loop to iterate through names array, each item becomes a key
//use another for loop to iterate through the colors array, each item becomes a value
//horses['Ed'] = "brown";

var horses = {};
for (var i = 0; i < names.length; i++)
	horses[names[i]] = colors[i];
