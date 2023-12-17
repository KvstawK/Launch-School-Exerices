console.log("John" + " " + "Doe")


let number = 4936
let ones = number % 10
ones
6

number = (number - ones) / 10
493

let tens = number % 10
tens
3

number = (number - tens) / 10
49

let hundreds = number % 10
hundreds
9

let thousands = (number - hundreds) / 10
thousands
4



'true' // string
false // boolean
1.5 // number
2 // number
undefined // undefined
{ foo: 'bar' } // object


console.log('5' + 10);

// the code logs 510 because it concatenate strings with the + sign and the 1st operator being a string


console.log(5 + 10);


console.log(`The value of 5 + 10 is ${Number('5') + 10}.`);


let foo = ['a', 'b', 'c'];
console.log(foo.length);  // => 3
console.log(foo[3]);      // will this result in an error?

// It will return undefined


// Multiline
let pets = {
  asta:         'dog',
  butterscotch: 'cat',
  pudding:      'cat',
  neptune:      'fish',
  darwin:       'lizard', // The comma on this line is optional
};

// Single line
let petsSingleLine = { asta: 'dog', butterscotch: 'cat', pudding: 'cat', neptune: 'fish', darwin: 'lizard' };


'foo' === 'Foo'

// false


console.log(parseInt('3.1415'))

// 3


console.log('12' < '9')

// true