import { verify } from './verify.js';

describe('verify', () => {
  it('should return true for a string', () => {
    expect(verify('')).toBe(true);
  });
});
