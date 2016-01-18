// 2 A Person Object looping through properties
var person = {
    name: "jon",
    state: "happy",
    health: "good",
    properties : function(){
     for(var key in this){
       var val = this[key];
       console.log(key + " : " + val)
   }
}
}

// 3) A Multiplier with two methods
function Multiplier (number) {
    this.value = number != "undefined" ? number : 1;
    this.multiply = function(new_num) {
        return new_num != "undefined" ? this.value*=new_num : this.value;
    }
    this.getCurrentValue = function(){
        return this.value;
    }
}
var m = new Multiplier(8);

// 4) A Photo and Album Object collaboration
function Photo(name, location) {
    this.name = name;
    this.location = location;
}

function Album(name, array_of_photos) {
    this.name = name;
    this.photos = array_of_photos != "undefined" ? array_of_photos : [];
}

var photo = new Photo("summer fun", "At the beach");
var my_album = new Album("Summer Vacation");
my_album.photos.push(photo);

// 5) A Person and Inheritance with School Object
function Person(first_name, last_name){
    this.first_name = first_name
    this.last_name = last_name
    this.full_name = function(){
        if (first_name != "undefined" && last_name != "undefined") {
            return first_name + " " + last_name; 
        } else{
            return "Not a complete name"            
        };
    }
}
function Teacher(first_name, last_name, subject) {
    this.subject = subject
    Person.apply(this, [first_name, last_name])
}
function Student(first_name, last_name, skill) {
    this.skill = skill
    Person.apply(this, [first_name, last_name])
}

function School(name, location, size) {
    this.name = name
    this.location = location
    this.size = size
    this.teachers = []
    this.students = []
    this.add_teacher = function(teacher){
        this.teachers.push(teacher);
    }
    this.add_student = function(student){
        this.students.push(student);
    }
}