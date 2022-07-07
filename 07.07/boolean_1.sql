WITH 
    tmp(arg, txt_arg) AS (VALUES(TRUE, 'TRUE'), (FALSE, 'FALSE'), (NULL, 'NULL'))
SELECT  CONCAT(tmp1.txt_arg, ' and ', tmp2.txt_arg, ' --> ', COALESCE(UPPER((tmp1.arg and tmp2.arg)::text), 'NULL')) as "and",
        CONCAT(tmp1.txt_arg, ' or ', tmp2.txt_arg, ' --> ', COALESCE(UPPER((tmp1.arg or tmp2.arg)::text), 'NULL')) as "or",
        CONCAT(tmp1.txt_arg, ' = ', tmp2.txt_arg, ' --> ', COALESCE(UPPER((tmp1.arg = tmp2.arg)::text), 'NULL')) as "equal"
FROM tmp tmp1, tmp tmp2;