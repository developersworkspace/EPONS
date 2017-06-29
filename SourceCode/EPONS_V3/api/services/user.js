var md5 = require('md5');
var sha1 = require('sha1');
var sql = require('mssql');
var environment = require('../environments/environment.js');

function list(username, query, skip) {

    return new Promise(function (fulfill, reject) {
        var sqlConnection = new sql.Connection(environment.databaseConnectionString);
        sqlConnection.connect().then(function () {
            new sql.Request(sqlConnection)
                .input('username', sql.VarChar(128), username)
                .input('query', sql.VarChar(128), query)
                .input('skip', sql.VarChar(128), skip)
                .execute("[api].[UserList]").then(function (results) {
                    fulfill(results[0]);
                    sqlConnection.close();
                }).catch(function (err) {
                    reject(err);
                    sqlConnection.close();
                });
        });
    });
}


function find(userId) {

    return new Promise(function (fulfill, reject) {
        var sqlConnection = new sql.Connection(environment.databaseConnectionString);
        sqlConnection.connect().then(function () {
            new sql.Request(sqlConnection)
                .input('userId', sql.UniqueIdentifier, userId)
                .execute('[api].[FindUserById]').then(function (results) {
                    fulfill(results[0][0]);
                    sqlConnection.close();
                }).catch(function (err) {
                    reject(err);
                    sqlConnection.close();
                });
        });
    });
}


function findFacilityPermissions(userId) {

    return new Promise(function (fulfill, reject) {
        var sqlConnection = new sql.Connection(environment.databaseConnectionString);
        sqlConnection.connect().then(function () {
            new sql.Request(sqlConnection)
                .input('userId', sql.UniqueIdentifier, userId)
                .execute('[api].[FindUserFacilityPermissionsByUserId]').then(function (results) {
                    fulfill(results[0]);
                    sqlConnection.close();
                }).catch(function (err) {
                    reject(err);
                    sqlConnection.close();
                });
        });
    });
}


function unlock(userId) {

    return new Promise(function (fulfill, reject) {
        var sqlConnection = new sql.Connection(environment.databaseConnectionString);
        sqlConnection.connect().then(function () {
            new sql.Request(sqlConnection)
                .input('userId', sql.UniqueIdentifier, userId)
                .execute('[api].[UnlockUserById]').then(function (results) {
                    fulfill(results[0]);
                    sqlConnection.close();
                }).catch(function (err) {
                    reject(err);
                    sqlConnection.close();
                });
        });
    });

}


function lock(userId) {
    return new Promise(function (fulfill, reject) {
        var sqlConnection = new sql.Connection(environment.databaseConnectionString);
        sqlConnection.connect().then(function () {
            new sql.Request(sqlConnection)
                .input('username', sql.VarChar(128), username)
                .input('emailAddress', sql.VarChar(128), emailAddress)
                .input('password', sql.VarChar(128), processPassword('password'))
                .execute('[dbo].[CreateUser]').then(function (results) {
                    fulfill(results[0]);
                    sqlConnection.close();
                }).catch(function (err) {
                    reject(err);
                    sqlConnection.close();
                });
        });
    });
}

function create(username, emailAddress) {
    return new Promise(function (fulfill, reject) {
        var sqlConnection = new sql.Connection(environment.databaseConnectionString);
        sqlConnection.connect().then(function () {
            new sql.Request(sqlConnection)
                .input('username', sql.VarChar(128), username)
                .input('emailAddress', sql.VarChar(128), emailAddress)
                .input('password', sql.VarChar(128), processPassword('password'))
                .execute('[api].[CreateUser]').then(function (results) {
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


module.exports = {
    list,
    find,
    lock,
    unlock,
    findFacilityPermissions,
    create
};
