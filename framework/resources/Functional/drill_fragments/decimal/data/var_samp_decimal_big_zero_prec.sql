SET planner.width.max_per_node=100;
SET planner.slice_target=1;
SET planner.enable_multiphase_agg=false;
SELECT
  var_samp(DECIMAL_18_18),
  var_samp(DECIMAL_2_2),
  var_samp(DECIMAL_15_15)
FROM dfs.drillTestDir.`decimal/fragments/T_DECIMAL_BIG_ZERO_PREC`;
RESET planner.width.max_per_node;
RESET planner.slice_target;
RESET planner.enable_multiphase_agg;
