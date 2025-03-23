import npmPackage, { verify } from './index.js';

describe('NPM Package', () => {
  it('should be an object', () => {
    expect(npmPackage).toBeInstanceOf(Object);
  });

  it('should have a verifier function', () => {
    expect(npmPackage.verify).toBeInstanceOf(Function);
  });

  it('should have a named export for the verifier function', () => {
    expect(verify).toBe(npmPackage.verify);
  });

  // Test for default export?
});
