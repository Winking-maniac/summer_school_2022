WITH 
    tmp(arg, txt_arg) AS (VALUES(TRUE, 'TRUE'), (FALSE, 'FALSE'), (NULL, 'NULL'))
SELECT CONCAT(tmp.txt_arg, ' is NULL --> ', COALESCE(UPPER((tmp.arg is NULL)::text), 'NULL'))
FROM tmp;