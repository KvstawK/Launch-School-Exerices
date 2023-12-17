false || (true && false); // false
true || (1 + 2); // true
(1 + 2) || true; // 3
true && (1 + 2); // 3
false && (1 + 2); // false
(1 + 2) && true; // true
(32 * 4) >= 129; // false
false !== !true; // false
true === 4; // false
false === (847 === '847'); // true
false === (847 == '847'); // false
(!true || (!(100 / 5) === 20) || ((328 / 4) === 82)) || false; // true


function evenOrOdd(num) {
  if (num % 2 === 0) {
    console.log('even');
  } else {
    console.log('odd');
  }
}

evenOrOdd(2)


function evenOrOdd(num) {
  if (!Number.isInteger(num)) {
    console.log('Sorry only integers allowed!');
    return;
  }

  if (num % 2 === 0) {
    console.log('even');
  } else {
    console.log('odd');
  }
}

evenOrOdd(2.4);


function barCodeScanner(serial) {
  switch (serial) {
    case '123':
      console.log('Product1');
    case '113':
      console.log('Product2');
    case '142':
      console.log('Product3');
    default:
      console.log('Product not found!');
  }
}

barCodeScanner('113');


// Product2, Product3, Product not found!, beause we haven't add 'break'


// return foo() ? 'bar' : qux();

/*
if (foo()) {
  return 'bar';
} else {
  return qnx();
}
*/


function isArrayEmpty(arr) {
  if (arr) {
    console.log('Not Empty');
  } else {
    console.log('Empty');
  }
}

isArrayEmpty([]);

// 'Not Empty' beause javascript sees the length of the array that is zero and print the first statement


function allCaps(string) {
  if (string.length > 10) {
    return string.toUpperCase();
  } else {
    return string;
  }
}

console.log(allCaps('Hello world'))


function numberRange(int) {
  if (int < 0) {
    console.log(`${int} is less than 0`)
  } else if (int <= 50 && int >= 0) {
    console.log(`${int} is between 0 and 50`)
  } else if (int > 50 && int <= 100) {
    console.log(`${int} is between 51 and 100`)
  } else {
    console.log(`${int} is greater than 100`)
  }
}

numberRange(151)


console.log(false ?? null); // false
console.log(true ?? (1 + 2)); // true
console.log((1 + 2) ?? true); // 3
console.log(null ?? false); // false
console.log(undefined ?? (1 + 2)); // 3
console.log((1 + 2) ?? null); // 3
console.log(null ?? undefined); // undefined
console.log(undefined ?? null); // null


function show(foo = undefined, bar = null) {
  console.log(`foo is ${foo ?? 3}, bar is ${bar ?? 42}`);
}

show(5, 7);
show(0, 0);
show(4);
show();

/*
5, 7
0, 0
4, 42
3, 42
*/