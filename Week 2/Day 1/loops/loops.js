// Jon Wexler, uncomment to run code

// first array for example 1
// var myArray = ["hello", "how", "are", "you?"];

// array of friends names
// var friends =["constance", "jeff", "kyle", "michael"];

// to show how a string is an array of letters
// "Jeff" // ["J", "e", "f", "f"] // var a = ["constance"];


// A for loop to iterate through friends names 
// for (var i = friends.length-1; i >= 0; i--) {
//   console.log(myArray[i]);  
// };

// a for loop to change the index more drastically
// for (var i = 2; i >= 0; i-=2) {     
  // console.log(myArray[i++]);
// console.log("index is: " + i); 
// };


// for loop to iterate through array length
// for (var i = 0; i < myArray.length; i++) {     
  // console.log(myArray[i]); 
// };

// first print whats at i = 2 print that index is 1 greater than i (3)




// While loop example

// var x = 1; 
// var y = 20; 
// var count = 0; 
// while (x < 10 && y > 0){
// console.log("Loop has run" + ++count + "times!");     
// console.log("x is: " + x + " and y is: " + y);     
// x++;        
// y-=3;     
// y = y-3; 
// }

// 10 9 8 7

// While loop example with money balance
// var balance = 100;

// while (balance > 0){     
  // balance-=20;     
  // console.log("I spent $20 and now I have $" + balance); 
// }
//     console.log("Out of Money! :(");


    // Bottles of Beer
    // var beer = 99;
    // while (beer > 0) {
    //     if (beer == 1) {
    //         console.log (beer + " bottle of root beer on the wall, " + beer + " bottle of root beer...take one down, pass it around " + --beer + " bottles of root beer on the wall");

    //     } else{
    //         console.log (beer + " bottles of root beer on the wall, " + beer + " bottles of root beer...take one down, pass it around " + --beer + " bottles of root beer on the wall");

    //     };
    // }
    // console.log("NO MORE BEER. GO HOME, JEFF!");



// Randomizer in JS
// function shuffle(array) {
//   var currentIndex = array.length, temporaryValue, randomIndex ;

//   // While there remain elements to shuffle...
//   while (0 !== currentIndex) {

//     // Pick a remaining element...
//     randomIndex = Math.floor(Math.random() * currentIndex);
//     currentIndex -= 1;

//     // And swap it with the current element.
//     temporaryValue = array[currentIndex];
//     array[currentIndex] = array[randomIndex];
//     array[randomIndex] = temporaryValue;
//   }

//   return array;
// }


// var students = ["Dylan", "Michael", "Alan", "Mark", "Greg", "Kyle M.",
// "Steve", "Phil", "Emily", "Kevin", "Seth", "Richard", "Kyle S.",
// "Jesus" ];

// students = shuffle(students);

// for (var i = 0; i < (students.length-1)/2; i++) {
//     console.log(students[i] + " is paired with " + students[students.length-1-i]);
// };
// console.log(" and " + students[(students.length-1)/2]);
