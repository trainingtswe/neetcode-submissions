WITH score_rank AS (
SELECT 
student_id,
exam_id,
score,
ROW_NUMBER() OVER (PARTITION BY student_id ORDER BY score DESC, exam_id ASC) AS sr
FROM exam_results)

SELECT 
student_id,
exam_id,
score
FROM score_rank 
WHERE sr = 1;

