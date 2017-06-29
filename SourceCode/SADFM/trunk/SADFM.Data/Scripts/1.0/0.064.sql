INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'General   ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'ICU' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Medical  ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'ICU' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Cardiac   ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'ICU' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Surgical         ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'ICU' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Trauma   ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'ICU' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Neuro    ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'ICU' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Paediatric         ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'ICU' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'General       ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'HighCare' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Medical                        ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'HighCare' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Cardiac          ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'HighCare' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Surgical        ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'HighCare' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Trauma     ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'HighCare' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Neuro        ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'HighCare' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Paediatric    ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'HighCare' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Orthopaedic',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'HighCare' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Investigative ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'GW' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Pre operative   ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'GW' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'High tech treatment     ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'GW' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Convalescent       ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'GW' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Rehab ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'GW' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Palliative (End of Life) Care    ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'GW' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Psych    ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'GW' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Convalescent      ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Convalescent' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Rehab     ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Rehab' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Palliative (End of Life) Care    ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Palliative (End of Life)' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Psych      ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Home Based Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Home Based Care' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Out Patients Department',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Out Patients Department' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       '',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Out Patients Department' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       '',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Out Patients Department' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       '',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Out Patients Department' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       '',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Out Patients Department' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       '',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Out Patients Department' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Mild Old Age Care',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Retirement Village' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Moderate  Old Age Care          ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Retirement Village' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Severe Old Age Care    ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Retirement Village' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Profound Old Age Care            ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Retirement Village' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Challenging behaviour Old Age Care  ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Retirement Village' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'PID Mild                                           ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'PID Moderate           ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'PID Severe                ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'PID Profound                     ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'PID Challenging Behaviour       ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Trauma Mild                 ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Trauma Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Trauma Moderate          ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Trauma Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Trauma Severe                ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Trauma Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Trauma Profound               ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Trauma Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Disease/Disability Mild             ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'General Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Disease/Disability Moderate             ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'General Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Disease/Disability Severe           ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'General Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Disease/Disability Profound         ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'General Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Mental illness Mild        ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Mental illness Moderate     ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Mental illness Severe      ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Mental illness Profound        ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid )

INSERT INTO listitem
            (parentid,
             NAME,
             statusid,
             lastupdatetimestamp,
             lastupdateaccountid)
SELECT liu.listitemid,
       'Mental illness Challenging Behaviour      ',
       lisa.listitemid,
       Getdate(),
       (SELECT TOP 1 accountid
        FROM   account
        ORDER  BY [datecreatedtimestamp])
FROM   listitem lipu
       INNER JOIN listitem liu
               ON ( lipu.NAME = 'ProviderUnit'
                    AND lipu.parentid IS NULL
                    AND liu.parentid = lipu.listitemid
                    AND liu.NAME = 'Psych Ward' )
       INNER JOIN listitem lis
               ON ( lis.NAME = 'Status'
                    AND lis.parentid IS NULL )
       INNER JOIN listitem lisa
               ON ( lisa.NAME = 'Active'
                    AND lisa.parentid = lis.listitemid ) 