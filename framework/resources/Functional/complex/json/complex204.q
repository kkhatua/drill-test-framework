select t.gbyt, count(t.bool) countbool from `complex.json` t group by t.gbyt having count(t.bool) >= 5544 order by countbool;
