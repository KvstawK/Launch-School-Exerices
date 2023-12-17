// let rlSync = require('readline-sync');
// let age = rlSync.question('How old are you? ');
// age = parseInt(age);

// console.log(`You are ${age} years old.`);

// for (let i = 10;i <= 40;i += 10) {
//   console.log(`In ${i} years you will be ${i + age}`)
// }


function factorial(num) {
  let result = 1;
  for (let i = num; i > 0; i--) {
    result = i * result;
  }

  return result;
}

console.log(factorial(1));     // => 1
console.log(factorial(2));     // => 2
console.log(factorial(3));     // => 6
console.log(factorial(4));     // => 24
console.log(factorial(5));     // => 120
console.log(factorial(6));     // => 720
console.log(factorial(7));     // => 5040
console.log(factorial(8));     // => 40320


// let counter = 0;

// while (counter = 1) {
//   console.log(counter);
//   counter += 1;

//   if (counter > 2) {
//     break;
//   }
// }

// it gives infinite loop because it is always counter = 1


for (let i = 0; i < 5;) {
  console.log(i += 1);
}

// It doesn't give an error because the 3 components of the for loop are optional, so it is well written with 2 components and iterates from 1 to 5.


function randomNumberBetween(min, max) {
  return Math.floor(Math.random() * (max - min + 1) + min);
}

let tries = 0;
let result;

do {
  result = randomNumberBetween(1, 6);
  tries += 1;
} while (result <= 2);

console.log('It took ' + String(tries) + ' tries to get a number greater 2');


function factorial(number) {
  if (number === 1) {
    return 1;
  }

  return number * factorial(number - 1);
}

console.log(factorial(1));     // => 1
console.log(factorial(2));     // => 2
console.log(factorial(3));     // => 6
console.log(factorial(4));     // => 24
console.log(factorial(5));     // => 120
console.log(factorial(6));     // => 720
console.log(factorial(7));     // => 5040
console.log(factorial(8));     // => 40320


