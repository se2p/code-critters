CREATE OR REPLACE VIEW score AS
SELECT * , (SELECT COUNT(*) FROM (
                                     SELECT u.username, SUM(r.score) AS score, COUNT(r.level_id) AS levels
                                     FROM result AS r
                                              JOIN user AS u ON r.user_id = u.id
                                     WHERE r.user_id IS NOT NULL AND u.username != 'admin'
                                     GROUP BY r.user_id
                                     ORDER BY sum(r.score) DESC
                                 ) AS aa
            WHERE aa.score > a.score AND aa.username != 'admin') + 1 AS position
FROM (
    SELECT u.username, SUM(r.score) AS score, COUNT(r.level_id) AS levels
    FROM result AS r
    JOIN user AS u ON r.user_id = u.id
    WHERE r.user_id IS NOT NULL AND u.username != 'admin'
    GROUP BY r.user_id
    ORDER BY sum(r.score) DESC
    ) AS a
;
