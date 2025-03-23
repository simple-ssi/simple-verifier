# Template for NPM packages

## Derived from multiple examples. [This](https://snyk.io/blog/best-practices-create-modern-npm-package/) one and [this](https://evertpot.com/universal-commonjs-esm-typescript-packages/) one in particular...

## Instructions

Initialize the repo (a starting `.gitignore` is provided):

```bash
git init
```

Install the dependencies:

```bash
npm install
```

Create a `.vscode` directory at the root of the project and paste the contents of `PROJECT-SETTINGS-PUT-IN-DOT-VSCODE-DIR.json` into a `settings.json` file.

In VS Code consider enabling the following extensions in the workspace:

- StandardJS
- Jest
- markdownlint
- Markdown Preview GitHub Styling

To run tests:

```bash
npm test
```

To run formatter (`ts-standard`):

```bash
npm run formatter
```

To build:

```bash
npm run build
```

To validate proper behavior as an npm package (see README in `/build/test/package`):

```bash
npm run packageChecker
```
