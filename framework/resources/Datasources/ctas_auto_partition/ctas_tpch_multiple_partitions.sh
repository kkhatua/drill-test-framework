hadoop fs -mkdir /drill/testdata/ctas_auto_partition
hadoop fs -rmr /drill/testdata/ctas_auto_partition/tpch_multiple_partitions
hadoop fs -mkdir /drill/testdata/ctas_auto_partition/tpch_multiple_partitions

${DRILL_HOME}/bin/sqlline -n user1 -p mapr -u "jdbc:drill:schema=dfs.ctasAutoPartition;drillbit=${DRILL_STORAGE_PLUGIN_SERVER}"  --run=resources/Datasources/ctas_auto_partition/ctas_tpch_multiple_partitions.ddl

# it seems that sqlline does not exit, if one of the queries failed.
if [ "$?" -eq 0 ]
then
        exit 0
else
        echo "ERROR: create table script failed. Rerun create_tables_parquet.ddl to debug failures."
        exit 1
fi
