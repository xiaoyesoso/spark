-- This file is automatically generated by LogicalPlanToSQLSuite.
select *
from src b
where not exists (select a.key
                  from src a
                  where b.value = a.value and a.value > 'val_2')
--------------------------------------------------------------------------------
SELECT `gen_attr_0` AS `key`, `gen_attr_1` AS `value` FROM (SELECT `gen_attr_0`, `gen_attr_1` FROM (SELECT `key` AS `gen_attr_0`, `value` AS `gen_attr_1` FROM `default`.`src`) AS gen_subquery_0 WHERE (NOT EXISTS(SELECT `gen_attr_3` AS `1` FROM (SELECT 1 AS `gen_attr_3` FROM (SELECT `gen_attr_4`, `gen_attr_2` FROM (SELECT `key` AS `gen_attr_4`, `value` AS `gen_attr_2` FROM `default`.`src`) AS gen_subquery_2 WHERE (`gen_attr_2` > 'val_2')) AS gen_subquery_1 WHERE (`gen_attr_1` = `gen_attr_2`)) AS gen_subquery_3))) AS b
