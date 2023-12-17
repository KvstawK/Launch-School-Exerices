let bar = 1;
function foo() {
  let bar = 2;
}

foo();
console.log(bar);

// it logs 1, foo doesnt affect the value because it is out of scope

function getInput(prompt) {
  let rlSync = require('readline-sync');
  let name = rlSync.question(prompt);
  return name;
}

let firstName = getInput("First name? ");
let lastName = getInput("Last name? ");
console.log(`Hello, ${firstName} ${lastName}`);


function multiply(prompt) {
  let rlSync = require('readline-sync');
  let number = rlSync.question(prompt);
  return number;
}

let firstNumber = multiply('Write first number: ');
let secondNumber = multiply('Write a second number: ');
console.log(`The multiplication of the number\'s you entered is: ${firstNumber * secondNumber}`)


function scream(words) {
  words = words + '!!!!';
  return;
  console.log(words);
}

scream('Yipeee');

// it prints nothing because of the return that terminates everything


function scream(words) {
  return words + '!!!!';
}

scream('Yipeee');

// nothing because it doesn't have a console.log


function multiplyNumbers(num1, num2, num3) {
  let result = num1 * num2 * num3;
  return result;
}

let product = multiplyNumbers(2, 3, 4);

/*
the function arguments // 2,3,4
the function body // everything inside { }
the function declaration // everything from line 53 to 56
the function invocation // multiplyNumbers(2, 3, 4);
the function name // multiplyNumbers
the function parameters // num1, num2, num3
the function return value // the result of num1 * num2 * num3 by using the numbers in multiplyNumbers(2, 3, 4)
the names of all variables in this program // multiplyNumbers, num1, num2, num3, result, product
*/


function foo(bar, qux) {
  console.log(bar);
  console.log(qux);
}

foo('Hello');

// returns undefined becasue wi have give one arguments while it needs two


function foo(bar, qux) {
  console.log(bar);
  console.log(qux);
}

foo(42, 3.1415, 2.718);

// 42 and 3.1415


function multiply(left, right) {
  let product = left * right;
  return product;
}

function getNumber(prompt) {
  return parseFloat(question(prompt));
}

let left = getNumber('Enter the first number: ');
let right = getNumber('Enter the second number: ');
console.log(`${left} * ${right} = ${multiply(left, right)}`);

/*
line 94: multiply, left, right
line 95: product, left, right
line 96: product
line 99: getNumber, prompt
line 100: parseFloat, question, prompt,
line 103: left, getNumber
line 104: right, getNumber
line 105: console, left, right. multiply, left, right
*/

/*
global variables: multiply, getNumber, parseFloat, question, console, left, right
local variables: left, right, prompt, product
*/

/*
They are not same variables, those that are arguments are local and those that are in lines 103, 104 are global
*/