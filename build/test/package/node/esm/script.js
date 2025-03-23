import * as messages from '@futureforg-ing/salutations';

console.log('\n[esm]');

console.log(
  messages.sayHello() === 'hello!' && messages.sayGoodbye() === 'goodbye!'
    ? 'pass'
    : 'fail'
);
