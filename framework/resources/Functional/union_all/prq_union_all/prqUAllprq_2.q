select count(col_int), col_boln from (select col_int, col_bgint, col_char, col_vchar, col_tmstmp, col_date, col_boln, col_dbl from `prqUnAll_0.parquet` union all select col_int, col_bgint, col_char, col_vchar, col_tmstmp, col_date, col_boln, col_dbl from `prqUnAll_1.parquet` union all select col_int, col_bgint, col_char, col_vchar, col_tmstmp, col_date, col_boln, col_dbl from `prqUnAll_0.parquet` union all select col_int, col_bgint, col_char, col_vchar, col_tmstmp, col_date, col_boln, col_dbl from `prqUnAll_1.parquet` union all select col_int, col_bgint, col_char, col_vchar, col_tmstmp, col_date, col_boln, col_dbl from `prqUnAll_0.parquet` union all select col_int, col_bgint, col_char, col_vchar, col_tmstmp, col_date, col_boln, col_dbl from `prqUnAll_1.parquet`) tmp group by tmp.col_boln;
