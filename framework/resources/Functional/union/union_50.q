(SELECT c2 FROM `union_01.parquet` ORDER BY c5 DESC nulls last) UNION (SELECT c2 FROM `union_02.parquet` ORDER BY c5 ASC nulls last);