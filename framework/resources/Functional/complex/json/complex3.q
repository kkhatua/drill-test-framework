select t.gbyt, count(t.id), max(t.id), min(t.id), avg(t.id) from `complex.json` t group by t.gbyt order by t.gbyt;