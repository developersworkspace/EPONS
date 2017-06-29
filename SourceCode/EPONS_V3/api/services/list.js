var sql = require('mssql');
var environment = require('../environments/environment.js');


function facilities() {
    return new Promise(function (fulfill, reject) {
        var sqlConnection = new sql.Connection(environment.databaseConnectionString);
        sqlConnection.connect().then(function () {
            new sql.Request(sqlConnection)
                .execute("[api].[ListFacilities]").then(function (results) {
                    fulfill(results[0]);
                    sqlConnection.close();
                }).catch(function (err) {
                    reject(err);
                    sqlConnection.close();
                });
        });
    });
}

function permissions() {

    return new Promise(function (fulfill, reject) {
        var sqlConnection = new sql.Connection(environment.databaseConnectionString);
        sqlConnection.connect().then(function () {
            new sql.Request(sqlConnection)
                .execute("[api].[ListPermissions]").then(function (results) {
                    fulfill(results[0]);
                    sqlConnection.close();
                }).catch(function (err) {
                    reject(err);
                    sqlConnection.close();
                });
        });
    });
}


module.exports = {
    facilities,
    permissions
};
