let name = 'Victor';
console.log(`Good Morning, ${name}.`);
console.log(`Good Afternoon, ${name}.`);
console.log(`Good Evening, ${name}.`);

// or a function

function greeter(time, name) {
  for (let i = 0; i < time.length; i++) {
    console.log(`Good ${time[i]} ${name}.`)
  }
}

greeter(['morning', 'afternoon', 'evening'], 'Victor')


