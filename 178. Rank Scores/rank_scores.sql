# Write your MySQL query statement below
SELECT
    Score, Rank
FROM
    (SELECT
        Score,
            @prev_value AS prevValue,
            @rank_count:=IF(Score < @prev_value, @rank_count + 1, @rank_count) AS Rank,
            @prev_value:=Score AS nowValue
    FROM
        Scores, (SELECT @rank_count:=1) r, (SELECT @prev_value:=NULL) p
    ORDER BY Score DESC) tmp
