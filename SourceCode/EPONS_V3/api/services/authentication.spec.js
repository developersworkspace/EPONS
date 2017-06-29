var chai = require('chai');
var authentication = require('./authentication');

var assert = chai.assert;

describe('Process Password', function() {
  it('Should hash password [MD5(SHA1(password))]', function() {
      password = 'password123';
      processedPassword = authentication.processPassword(password);
      assert.equal('e933f35ad585ac6753ee607ab8fd0a4d', processedPassword);
  });
});
