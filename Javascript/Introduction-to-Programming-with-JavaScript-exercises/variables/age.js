let age = 20;
console.log(`You are ${age} years old.`);
console.log(`In 10 years, you will be ${age + 10} years old.`);
console.log(`In 20 years, you will be ${age + 20} years old.`);
console.log(`In 30 years, you will be ${age + 30} years old.`);
console.log(`In 40 years, you will be ${age + 40} years old.`);

// or 

function age(years, old) {
  for (i = 0; i < years.length; i++) {
    console.log(`In ${years[i]} years, you will be ${old + years[i]} years old.`)
  }
}

age([10, 20, 30, 40], 20)


{
  let foo = 'bar';
}

console.log(foo);

// Error because foo its initialized inside the {} so we console.log it outside of the scope


const NAME = 'Victor';
console.log('Good Morning, ' + NAME);
console.log('Good Afternoon, ' + NAME);
console.log('Good Evening, ' + NAME);

NAME = 'Joe';
console.log('Good Morning, ' + NAME);
console.log('Good Afternoon, ' + NAME);
console.log('Good Evening, ' + NAME);

// error because we tried to change the const NAME by adding NAME = 'Joe'


let foo = 'bar';
{
  let foo = 'qux';
}

console.log(foo);

// it prints 'bar' because it is inside the scope


const FOO = 'bar';
{
  const FOO = 'qux';
}

console.log(FOO);

// no