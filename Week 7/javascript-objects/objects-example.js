// Object Inheritance
function Animal(name, origin, tail) {
    this.name = name;
    this.origin = origin;
    this.tail = tail == "undefined" ? false : true;
    this.running = function(){return name + " is running!"};
}


function Elephant(size, name, origin, tail){
    this.size = size;
    Animal.apply(this, [name, origin, tail]);
}

Animal.prototype.color = "green";

Elephant.prototype = new Animal();

var anim = new Animal("Zebra", "Africa");
var eleph = new Elephant("large", "Elephant", "Africa", "yes");

// Prototypes
function Book(pages){
    this.pages = pages;
}

var b = new Book(456);

Book.prototype.cover = true;
Book.prototype.progress = function(){return "Haven't started yet..."};


// Michael's Guitar
function Guitar (electric, body_type, strings) {
    this.electric = electric
    this.body_type = body_type
    this.strings = typeof strings != "undefined" ? strings : 6
    this.how_many_strings = function(){return "Your guitar has " + this.strings + " strings"}
}
var g = new Guitar(true, "solid");
console.log(g.how_many_strings());

// Object Literal Computer
var my_computer = {
    cpu: 4.3,
    turn_on: function () {return "My computer is turning on...."}
}
console.log(my_computer.turn_on());
console.log(my_computer.cpu);

// Constructor Function for a Computer
function Computer(cpu) {
    this.cpu = cpu > 0 ? cpu : 2;

    if (cpu >0) {
        this.cpu = cpu
    }else {
        this.cpu = 2
    };

    this.turn_on = function () {return "Computer is turning on...."}
}
var comp = new Computer(-4.3);
console.log(comp.cpu);
console.log(comp.turn_on());

// Constructor Function for a Car
function Car (brand) {
    this.brand =  typeof brand !== 'undefined' ? brand : "ford";
}

// Instantiating and printing the attributes of a car
var c = new Car("Jon");
var d = new Car();
console.log(c.brand);
console.log(d.brand);

// Object Literal definition
var house = {
    windows: 4,
    color: "blue",
    address: "100 fake st."
};


// Printing our the Object Literal's attributes
console.log(house.address);
console.log(house.windows);
console.log("The House is " + house.color);
