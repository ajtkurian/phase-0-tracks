/*
Find the Longest Word Function
Input: array
output: string 

-functiont takes in an input and itertates through all of its elements
- the element is compared to another string variable and determines if it is larger in length
- if the element is larger in length then that element is saved into that variable
- output would then be that variable
*/

function longestWord(array) {
	var outputString = ''
	for (var index in array) {
		element = array[index];
		if (element.length > outputString.length) {
			outputString = element;
		}
	}
	return outputString;
} 

console.log(longestWord(['a', 'ab', 'abel', 'k']))  //returns 'abel'
console.log(longestWord(['a', 'ab', 'abelkurian', 'kurian'])) //returns 'abelkurian'
console.log(longestWord(['a', 'abel', 'abel', '']))  //returns 'abel'

function keyValueMatch(obj1, obj2) {
	for (var key in obj1) {
		if (obj2.hasOwnProperty(key)) {
			return true;
		}
	}
	return false
}

var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};

console.log(keyValueMatch(obj1,obj2));  //returns true

var obj1 = {name1: "Steven", age1: 54};
var obj2 = {name: "Tamir", age: 54};

console.log(keyValueMatch(obj1,obj2));  //return false

function randomStringArray(integer) {
	var stringArray = [];
	for (var i =0; i<integer; i++){
		var randomNumber = Math.floor(Math.random() * 10) + 1;
		var string = "";
		for (var j = 0; j< randomNumber; j++) {
			var randomNumberLtr = Math.floor(Math.random() * (122-97+1)) + 97;
			var randomLetter = String.fromCharCode(randomNumberLtr);
			string += randomLetter;
		}
		stringArray.push(string);
	}
	return stringArray;
}

for (var i = 0; i < 10; i++) {
	var stringArray = randomStringArray(8);
	console.log(stringArray);
	var word = longestWord(stringArray);
	console.log(word);
}