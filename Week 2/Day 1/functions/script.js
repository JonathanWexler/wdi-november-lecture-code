// Jon Wexler, code to work with functions folder html
// functions to check what number was inputed
function addNums(){
    var x = document.getElementById('num1').value;
      // num2 = document.getElementById('num2').value;
      // document.getElementById('result').innerHTML = (parseInt(num1) + parseInt(num2));
      // console.log((parseInt(num1) + parseInt(num2)));

      // conditional if statement
      x = parseInt(x);
      if (x<10){
        alert("Your number is less than 10");
    }else {
        alert("Your number:" + x + " is greater than 10!");
    }
}

// function to print back a name passed in as an argument
function takeName (name) {
    alert( "my name is " + name);
}

// a function that takes no arguments and prints a statement
function takeNothing () {
    console.log("This takes no argument!");
}

// function for the door prize exercise
function doorPrize (doorNumber) {

    // doorNumber = parseInt(doorNumber);
    if (doorNumber == 1) {
        alert("You win a Tiger!");

    } else if (doorNumber == 2){
        alert("You win an iPhone!");
    }else if (doorNumber == 3){
        alert("A Marker!")
    }else {
        alert("To Jail, you go!");
    }

}

