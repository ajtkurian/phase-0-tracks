/*
Input: String
Output: string in reverse order

Create a new empty string variable to hold letter.  
Iterate through input in reverse order and add it to the empty string
*/

function reverse(string) {
	var emptyString = ""
	for (var i = string.length-1; i >= 0; i--) {
		emptyString = emptyString + string[i];
	};
	return emptyString;
};

var input = "Abel Kurian"
if (1) {
	console.log(reverse(input));
};