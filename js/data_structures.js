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

console.log(horses);