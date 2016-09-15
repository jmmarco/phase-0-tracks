colors = ["blue", "red", "green", "yellow"];

names = ["Peter", "Brian", "Glenn", "Charly"];

// Add additional color to the colors array
colors.push("black");

// Add addtional name
names.push("Stewie");

// console.log(colors, names);


var horses = {};

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

// Use for in loops to acces JS objects
for (var key in horses) {
  console.log("The name of the horse is: " + key + " and the color is: " + horses[key] );
}

// console.log(horses);

//  Car constructor

function  Car(engine, wheels, seats) {
  this.engine = engine;
  this.wheels = wheels;
  this.seats = seats;

  this.goFast = function() { console.log("** ACELERATES TO HYPERSPEED **"); };
}

my_car = new Car("electric", 4, 5);
console.log(my_car);

my_car.goFast();
