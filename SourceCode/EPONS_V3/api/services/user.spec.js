var chai = require('chai');
var user = require('./user');

var assert = chai.assert;

describe('Create new user', function () {
    it('Should create new user in database', function () {
        user.create(null, 'testUser', 'testUser@example.com').then(function (obj) {
            assert.equal('a','b');
        }, function (obj) {
            assert.equal('a','b');
        });

    });
});