WITH ordered_events AS (
    SELECT
        case_id,
        activity,
        timestamp,
        LEAD(activity) OVER (
            PARTITION BY case_id ORDER BY timestamp
        ) AS next_activity,
        LEAD(timestamp) OVER (
            PARTITION BY case_id ORDER BY timestamp
        ) AS next_timestamp
    FROM event_log
)
SELECT
    activity AS from_activity,
    next_activity AS to_activity,
    ROUND(
        AVG(
            (julianday(next_timestamp) - julianday(timestamp)) * 24
        ), 2
    ) AS avg_hours,
    COUNT(*) AS transitions
FROM ordered_events
WHERE next_activity IS NOT NULL
GROUP BY activity, next_activity
ORDER BY avg_hours DESC;
