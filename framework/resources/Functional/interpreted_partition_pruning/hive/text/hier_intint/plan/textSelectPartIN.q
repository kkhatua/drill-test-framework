explain plan for select l_orderkey, l_partkey, l_quantity, l_shipdate, l_shipinstruct from hive.lineitem_text_partitioned_hive_hier_intint where `year` IN (abs(-1993)) and `month`=abs(-2);
