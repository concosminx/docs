SELECT
  CASE
    WHEN B.TABLE_NAME IS NULL
    THEN 'UNINDEXED'
    ELSE 'INDEXED'
  END               AS STATUS,
  A.TABLE_NAME      AS TABLE_NAME,
  A.CONSTRAINT_NAME AS FK_NAME,
  A.FK_COLUMNS      AS FK_COLUMNS,
  A.R_CONSTRAINT_NAME REFERENCED_CONSTRAINT,
  B.INDEX_NAME    AS INDEX_NAME,
  B.INDEX_COLUMNS AS INDEX_COLUMNS
FROM
  (SELECT A.TABLE_NAME,
    A.CONSTRAINT_NAME,
    B.R_CONSTRAINT_NAME,
    LISTAGG(A.COLUMN_NAME, ',') WITHIN GROUP (
  ORDER BY A.POSITION) FK_COLUMNS
  FROM DBA_CONS_COLUMNS A,
    DBA_CONSTRAINTS B
  WHERE A.CONSTRAINT_NAME = B.CONSTRAINT_NAME
  AND B.CONSTRAINT_TYPE   = 'R'
  AND A.OWNER             = :OWNER
  AND A.OWNER             = B.OWNER
  GROUP BY A.TABLE_NAME,
    A.CONSTRAINT_NAME,
    B.R_CONSTRAINT_NAME
  ) A ,
  (SELECT TABLE_NAME,
    INDEX_NAME,
    LISTAGG(C.COLUMN_NAME, ',') WITHIN GROUP (
  ORDER BY C.COLUMN_POSITION) INDEX_COLUMNS
  FROM DBA_IND_COLUMNS C
  WHERE C.INDEX_OWNER = :OWNER
  GROUP BY TABLE_NAME,
    INDEX_NAME
  ) B
WHERE A.TABLE_NAME = B.TABLE_NAME(+)
AND B.INDEX_COLUMNS(+) LIKE A.FK_COLUMNS
  || '%'
AND A.TABLE_NAME = :TABLE_NAME
ORDER BY 1 DESC,
  2,3;  