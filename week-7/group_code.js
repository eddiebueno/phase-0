/*
PERSON 2 - CONNOR REAUMOND
Input: Two arrays
Outputs: Sum, median, mean (for each array)
Steps:
Create array oddLengthArray
  Set it equal to [3,3,3,4,4,4,6]
Create array evenLengthArray
  Set it equal to [5,5,5,5,6,6,8,8]
 
Create function sum that accpets oddLengthArray and evenLengthArray as parameters
  Create variable sumEven
  Create variable sumOdd
  Loop through each array 
  	Set counter = 0, while counter less than length of array, add 1 to counter
		Add each number to new variable
  return values

Create function mean that accpets oddLengthArray and evenLengthArray as parameters
  Create variable sumEven
  Create variable sumOdd
  Loop through each array
  	Set counter = 0, while counter less than length of array, add 1 to counter
  		Add each number to new variable
		Divide variable by lenth of array
  Return value
  
Create function median that accpets oddLengthArray and evenLengthArray as parameters
  For evenLengthArray
  	Find length of array. Sort array, select element at (length/2)-1
  For oddLengthArray
  	Find length of array. Sort array, select elements at (length/2)-1 and (length/2)
	Add together, divide by two.
  	
  	
*/

var oddLengthArray = [3,3,3,4,4,4,6]
var evenLengthArray = [5,5,5,5,6,6,8,8]
var sum1 = 0
function sum(oddLengthArray, evenLengthArray) {
  var allNum = oddLengthArray.concat(evenLengthArray);
  for (var count = 0; count < allNum.length; count++)
    sum1 = sum1 + allNum[count];
  console.log(sum1)
  console.log(oddLengthArray)
  console.log(evenLengthArray)
}
sum(oddLengthArray, evenLengthArray)

function addArray(array,sum){
	for (i = 0; i < array.length; i++)
		sum += array[i];
	return sum
}


function mean(oddArray, evenArray){
	var sumEven = 0, sumOdd = 0;
	var oddMean = addArray(oddArray,sumOdd)/oddArray.length, evenMean = addArray(evenArray,sumEven)/evenArray.length;
	console.log(oddMean)
	console.log(evenMean)
	return oddMean, evenMean
}

function median(oddArray, evenArray){
	var oddMedian1 = oddArray.sort()[oddArray.length / 2];
	var oddMedian2 = oddArray.sort()[(oddArray.length / 2) -1];
	console.log("Here are the medians:")
	console.log(oddMedian1,oddMedian2)
	var oddMedian = (oddMedian1 + oddMedian2) / 2;
	var evenMedian = evenArray.sort()[(evenArray.length / 2) - 1];
	console.log(oddMedian)
	console.log(evenMedian)
	return oddMedian, evenMedian
}

mean(oddLengthArray, evenLengthArray)
median(oddLengthArray, evenLengthArray)