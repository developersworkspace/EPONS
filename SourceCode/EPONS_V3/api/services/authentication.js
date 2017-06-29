var sql = require('mssql');
var md5 = require('md5');
var sha1 = require('sha1');
var environment = require('../environments/environment.js');

function validateCredentials(username, password) {

    password = processPassword(password);

    return new Promise(function (fulfill, reject) {
        var sqlConnection = new sql.Connection(environment.databaseConnectionString);
        sqlConnection.connect().then(function () {
            new sql.Request(sqlConnection)
                .input('username', sql.VarChar(128), username)
                .input('password', sql.VarChar(128), password)
                .execute('[api].[ValidateCredentials]').then(function (results) {
                    if (results[0].length == 0) {
                        fulfill(null);
                    } else {
                        fulfill({
                            "token": username
                        });
                    }
                    fulfill(results[0][0]);
                    sqlConnection.close();
                }).catch(function (err) {
                    reject(err);
                    sqlConnection.close();
                });
        });
    });
}


function processPassword(password) {
    return md5(sha1(password));
}


function sendResponse(res, status, obj) {
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader('Content-Type', 'application/json');
    res.send(JSON.stringify(obj), status);
}

module.exports = {
    validateCredentials,
    processPassword
};
