const Verifier = require('@simple-ssi/simple-verifier');

console.log('\n[cjs]');

const verifyThis = 'a value to verify';

console.log(Verifier.verify(verifyThis) ? 'pass' : 'fail');
