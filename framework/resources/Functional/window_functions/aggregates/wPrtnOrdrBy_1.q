SELECT col_vchar_52, col_int, RANK () OVER (PARTITION BY col_vchar_52 order by col_int) rnk FROM `smlTbl.parquet` WHERE col_vchar_52 = 'AXXXXXXXXXXXXXXXXXXXXXXXXXCXXXXXXXXXXXXXXXXXXXXXXXXB';