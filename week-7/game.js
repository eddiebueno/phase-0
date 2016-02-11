 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Pet the dog
// Overall mission: Find a way to the dog and pet it
// Goals: Pet the dog
// Characters: You , dog
// Objects: key, door, dog, self
// Functions: Pick up, Use, Pet, move

/*
You start off by standing in a room. Right in front of you
is the key. In front of the key is the door and in front
of the door is the dog. The goal is to move to the key, pick it
up, move to the door, open it, move to the dog, and pet it.
*/

// Pseudocode
//
/*
objects:
var character = {
	position: initial
	inventory: empty
	action: do the action on object's action
}
var dog = {
	position: final
	action: pet
}
var key = {
	position: first
	action: pick up
}
var door = {
	position: second
	action: unlock then open

}

*/

// Initial Code

// var character = {
// 	position: 0;
// 	inventory: [];
// 	success: false; 
// 	move: function(input){
// 		if (input == "forward"){
// 			if (self.position == door.position){
// 				if (door.locked == true){
// 					return console.log("The door is locked. You cannot move forward!");			
// 				}
// 				else{
// 					self.position += 1;
// 				}
// 			}
// 			else {
// 				self.position += 1;
// 			}
// 		}
// 		else if (input == "backward"){
// 			self.position -= 1;
// 		}
// 		else{
// 			console.log("That is an invalid input. You can only move forward or backward");
// 		}
// 	}
// 	console.log("Your position is now " + character.position);

// 	pickUp: function(object){
// 		if (object.name == "key" && key.position == self.position){
// 			character.inventory.push(object);
// 			console.log("You put the key in your inventory");
// 		}
// 		else{
// 			conole.log("You can not pick that up!");
// 		}
// 	}
// 	unlock: function(){
// 		if (object.name == "door" && self.position == door.position){
// 			if (character.inventory[0] == key){
// 				door.locked = false;
// 			}
// 			else{
// 				console.log("You do not have the key to unlock the door. Go back an pickUp the key.")
// 			}
// 		}
// 		else{
// 			console.log("You cannot unlcok anything here.")
// 		}
// 	}
// 	pet: function(){
// 		if (self.position == dog.position){
// 			self.success = true
// 			console.log("You just pet the dog! You win!")
// 		}
// 		else{
// 			console.log("There is no dog here to pet.")
// 		}
// 	}
	
// }

// var dog = {
// 	position: 3;
// 	name: "dog"
// }
// var key = {
// 	position: 1;
// 	name: "key"
// }
// var door = {
// 	position: 2;
// 	name: "door"
// 	locked: true
// }

// character.move("forward")
// character.pickUp(key)
// character.move("forward")
// character.unlock()
// character.move("forward")
// character.pet()


// Refactored Code
var character = {
	position: 0,
	inventory: [],
	success: false, 
	move: function(input){
		if (input == "forward"){
			if (character.position == door.position){
				if (door.locked == true){
					console.log("The door is locked. You cannot move forward!");			
				}
				else{
					character.position += 1;
					console.log("Your position is now " + character.position)
				}
			}
			else {
				character.position += 1;
				console.log("Your position is now " + character.position)
			}
		}
		else if (input == "backward"){
			character.position -= 1;
			console.log("Your position is now " + character.position)
		}
		else{
			console.log("That is an invalid input. You can only move forward or backward");
		}
	},
	pickUp: function(object){
		if (object.name == "key" && key.position == character.position){
			character.inventory.push(object);
			console.log("You put the key in your inventory");
		}
		else{
			console.log("You can not pick up anything at this position!");
		}
	},
	unlock: function(){
		if ( character.position == door.position){
			if (character.inventory[0] == key){
				door.locked = false;
			}
			else{
				console.log("You do not have the key to unlock the door. Go back an pickUp the key.")
			}
		}
		else{
			console.log("You cannot unlcok anything here.")
		}
	},
	pet: function(){
		if (character.position == dog.position){
			character.success = true
			console.log("You just pet the dog! You win!")
		}
		else{
			console.log("There is no dog here to pet.")
		}
	}
}
var dog = {
	position: 3,
	name: "dog"
}
var key = {
	position: 1,
	name: "key"
}
var door = {
	position: 2,
	name: "door",
	locked: true
}

character.move("forward")
// character.pickUp(key)
character.move("forward")
character.unlock()
character.move("forward")
character.pet()
console.log(character.inventory)
character.move("backward")
character.pickUp(key)
console.log(character.inventory)
character.move("forward")
character.pickUp(key)
character.unlock()
character.move("forward")
character.pet()
console.log(character.success)
console.log(dog.name)
console.log(door.locked)
console.log(door.position)





// Reflection
/*


What was the most difficult part of this challenge?
The most difficult part of this challenge was probably coming up with the idea and making it simple as possible.
There was so much I wanted to do but I knew it would take way too long to implement all of it, so I tried to make it simple
and easy to follow.

What did you learn about creating objects and functions that interact with one another?
I learned that I need to put commas after each key that I create in the object that I create, otherwise I get an error message.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I did not look too much ino built in methods that I could use. I am pretty sure there might be more built in methods I could use,
but I tried to make it simple with what I have.

How can you access and manipulate properties of objects?
You can access them just by calling the object.property and change it by setting it equal to something else (i.e. object.property = something_else)



*/