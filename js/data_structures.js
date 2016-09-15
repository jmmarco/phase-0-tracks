// Create colors and names array
colors = ["blue", "red", "green", "yellow"];
names = ["Peter", "Brian", "Glenn", "Charly"];

// Add additional color to the colors array
colors.push("black");

// Add addtional name
names.push("Stewie");

// console.log(colors, names);

// Create a horses object
var horses = {};

// Iterate throught the names and colors array and and assign a key value for the horses object
for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

// Use for in loops to acces JS objects
for (var key in horses) {
  console.log("The name of the horse is: " + key + " and the color is: " + horses[key] );
}

console.log(horses);

// Car constructor function
function Car(engine, wheels, seats) {
  this.engine = engine;
  this.wheels = wheels;
  this.seats = seats;

  // Method to make the car go fast
  this.goFast = function() { console.log("** ACELERATES TO HYPERSPEED **"); };
}

// Create a new car and assign it to a variable
my_car = new Car("electric", 4, 5);

// Check object
console.log(my_car);

// Make car go fast
my_car.goFast();
