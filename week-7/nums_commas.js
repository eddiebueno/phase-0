// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
/* convert number to string
iterate from the end of the newstring to the front
add a comma for every 3 but take into account the comma
adds 1 for the every three
return newstring
*/


// Initial Solution
function insert(str, index, value) {
    return str.substr(0, index) + value + str.substr(index);
}

function reverse(str){
    return str.split("").reverse().join("");
}

function separateComma(number){
	var numCommas = 0;
	var string = reverse(number.toString());
	for (i = 1; i < string.length; i++)
		if (i % 3 == 0){
			string = insert(string, (i + numCommas), ',');
			numCommas += 1;
		}
	console.log(reverse(string));
	return reverse(string);
}

// Refactored Solution

function separateComma(number){
	var string = reverse(number.toString()), numCommas = 0;
	for (i = 1; i < string.length; i++)
		if ((i % 3 == 0) && ((i + numCommas) < string.length)){
			string = insert(string, (i + numCommas), ',');
			numCommas += 1;
		}
	return reverse(string);
}


// Your Own Tests (OPTIONAL)

console.log(separateComma(1569743) == "1,569,743");
console.log(separateComma(123456789012));

// Reflection

/*


What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
It was a little difficult going at it with a JavaScript perspective. I was so used to ruby but the transition isn't too bad.
I went about the problem the same way as I did before but realized I could not do what I had done with ruby. So I basically had to start all over.

What did you learn about iterating over arrays in JavaScript?
I learned that you can not use negative indecies. So if you had put string[-1] = something you would make a property of it and it would not change the string.
It was interesting to see what it actually does, and I am not sure if I fully nderstand it.

What was different about solving this problem in JavaScript?
The difference in this problem was that you had to use Javascript methods an not ruby. I was so used to the methods we have used before.
That made it a little challenging but not too bad. It just took a little more researching what to do in Javascript as opposed to ruby.

What built-in methods did you find to incorporate in your refactored solution?
For Strings:
.split()
.substr()

For arrays:
.reverse()
.join()

For Integers:
.toString()


*/