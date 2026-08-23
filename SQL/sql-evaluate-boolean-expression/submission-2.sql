SELECT
    e.left_operand,
    e.operator,
    e.right_operand,
    CASE 
    WHEN operator = '>' THEN lv.value > rv.value
    WHEN operator = '=' THEN lv.value = rv.value
    WHEN operator = '<' THEN lv.value < rv.value
    END AS value
FROM expressions e
JOIN variables lv ON e.left_operand = lv.name
JOIN variables rv ON e.right_operand = rv.name;