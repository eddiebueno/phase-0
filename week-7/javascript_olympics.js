// JavaScript Olympics

// I paired [with: John] on this challenge.

// This challenge took me [1] hours.


// Warm Up




// Bulk Up
// Athlete ={ name: , event: }

var bulkup = function(athletes) {
  for (var i = 0; i < athletes.length; i++) {
  	athletes[i].win = console.log(athletes[i].name + " won the " + athletes[i].event);
  }
}


// Driver code for bulk up
var john = {name: "John", event: "100m hurdles"};
var eddie = {name: "Eddie", event: "marathon"};
var athletes = [john, eddie];
bulkup(athletes)
john.win
eddie.win



// Jumble your words


function reverse(string){
	// var reversed = [];
 //  for (var i = string.length; i < 0; i--) {
 //    for (var x = 0; x > string.length; i++) {
      
 //      reversed[x] = string[i];
 //    }
    
 //  }
 //  console.log(reversed.join(''))
  var array = string.split('');
  console.log(array.reverse().join(''));
}


// driver code for jumble your words
var words = "!sdrow ruoy elbmuJ";
reverse(words)


// 2,4,6,8

function onlyEvens(nums) {
	var evenArray = [];
  	for (var i = 0; i < nums.length; i++) {
    	if (nums[i] % 2 == 0) {
      	evenArray.push(nums[i]);
    	} 
  	}
  	console.log(evenArray)
}


// driver code for 2,4,6,8
var numArray = [1, 2, 3, 4, 5, 6];
onlyEvens(numArray)



// "We built this city"
var Athlete = function(name, age, sport, quote ) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection