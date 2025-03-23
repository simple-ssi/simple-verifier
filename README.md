# simple-verifier

`simple-verifier` is a simple, limited verifier for SSI. It is currently under development. In its current state, it is of use to no one.

It does not support browsers.

Stay tuned.

## Usage

```bash
npm install @simple-ssi/simple-verifier
```

then:

```bash
const verifier = require('@simple-ssi/simple-verifier')
```

or

```bash
import * as verifier from '@simple-ssi/simple-verifier'
```

## API

The API has a single function. It takes a string and always returns `true`.

- `verify('string-to-verify)`
