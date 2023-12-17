let rlSync = require('readline-sync');

let name = rlSync.question("What is your name? ")
console.log(`Hello ${name}`)


let firstName = rlSync.question("What is your first name? ")
let lastName = rlSync.question("What is your last name? ")

console.log(`Hello, ${firstName} ${lastName}!`)


let age = rlSync.question("How old are you? ")
const years = [10, 20, 30 ,40];

function ageProgression(years ,age) {
  console.log(`You are ${age} years old`)

  for(let i = 0; i < years.length; i++) {
    console.log(`In ${years[i]} you will be ${Number(years[i]) + Number(age)}`)
  }
}

ageProgression(years, age);
