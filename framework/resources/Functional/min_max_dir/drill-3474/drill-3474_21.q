SELECT a.filename,b.filename,a.suffix,b.suffix,a.fqn,b.fqn,a.filepath,b.filepath, a.name from `min_max_dir/2005` a left outer join `drill-3474/2015` b on (a.name=cast(b.columns[1] as varchar(30))) where b.filepath like '%May%';
