var sql = require('mssql');

sql.connect("mssql://Elmah:elmah123@developersworkspace.co.za/Elmah").then(function () {
    // Query

    new sql.Request().query('SELECT [Type] FROM [dbo].[ELMAH_Error]').then(function (recordset) {
        console.dir(recordset);
    }).catch(function (err) {
        // ... query error checks
    });

    // Stored Procedure

    // new sql.Request()
    //     .input('input_parameter', sql.Int, value)
    //     .output('output_parameter', sql.VarChar(50))
    //     .execute('procedure_name').then(function (recordsets) {
    //         console.dir(recordsets);
    //     }).catch(function (err) {
    //         // ... execute error checks
    //     });

   
}).catch(function (err) {
    // ... connect error checks
});