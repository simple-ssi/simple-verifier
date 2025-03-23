import * as Verifier from '@simple-ssi/simple-verifier';
import { verify } from '@simple-ssi/simple-verifier';

console.log('\n[esm]');

const verifyThis = 'a value to verify';

console.log(
  Verifier.verify(verifyThis) && verify(verifyThis) ? 'pass' : 'fail'
);
