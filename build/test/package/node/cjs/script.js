const messages = require('@futureforg-ing/salutations');

console.log('\n[cjs]');

console.log(
  messages.sayHello() === 'hello!' && messages.sayGoodbye() === 'goodbye!'
    ? 'pass'
    : 'fail'
);
