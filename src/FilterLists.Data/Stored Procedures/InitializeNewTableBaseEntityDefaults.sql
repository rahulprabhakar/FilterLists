--TODO: Possibly convert to stored procedure
ALTER TABLE
    filterlistsdata.List MODIFY COLUMN AddedDateUtc DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL;
ALTER TABLE
    filterlistsdata.List MODIFY COLUMN ModifiedDateUtc DATETIME DEFAULT NULL;
ALTER TABLE
    filterlistsdata.TableCsv MODIFY COLUMN AddedDateUtc DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL;
ALTER TABLE
    filterlistsdata.TableCsv MODIFY COLUMN ModifiedDateUtc DATETIME DEFAULT NULL;
ON
UPDATE
    CURRENT_TIMESTAMP;