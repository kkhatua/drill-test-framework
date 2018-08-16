SET planner.width.max_per_node=100;
SET planner.slice_target=1;
SET planner.enable_multiphase_agg=false;
SELECT
  avg(decimal_big.DECIMAL_18_8),
  avg(decimal_big_zero_prec.DECIMAL_18_18)
FROM
  dfs.drillTestDir.`decimal/fragments/T_DECIMAL_BIG` decimal_big
JOIN
  dfs.drillTestDir.`decimal/fragments/T_DECIMAL_BIG_ZERO_PREC` decimal_big_zero_prec
ON decimal_big.ID = decimal_big_zero_prec.ID;
RESET planner.width.max_per_node;
RESET planner.slice_target;
RESET planner.enable_multiphase_agg;
