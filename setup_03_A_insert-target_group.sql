-- Creating tables
-- Please make sure you are connected with wefarmtestdb
-- and with the wefarmtest user or with a user with the correct privileges
-- to run the statements

-- On wefarmtestdb

----------------------------------
-- public.target_group
----------------------------------

WITH
    target_group_data AS (
        SELECT
            1 AS id,
            'sms-to-digital-8-v1' AS target_group_name,
            'Wefarm online is here! Join farming groups, connect with other farmers & share tips to help each other succeed. Join now we.fm/sms/i1' AS content,
            '/sms/i1' AS keyword,
            NOW() AS created_at,
            'wefarmtest' AS created_by
        UNION ALL
        SELECT
            3,
            'sms-to-digital-8-v3',
            'Be known as a model farmer in your area of farming by answering your fellow farmers'' questions on Wefarm online. Join now we.fm/sms/i3',
            '/sms/i3',
            NOW(),
            'wefarmtest'
        UNION ALL
        SELECT
            5,
            'sms-to-digital-8-v5',
            'Farming is hard work! We need to help each other succeed. Wefarm online is a farmer-only community connecting farmers from all over Kenya. Join now we.fm/sms/i5',
            '/sms/i5',
            NOW(),
            'wefarmtest'
        UNION ALL
        SELECT
            6,
            'sms-to-digital-8-v6',
            'What did you do on your farm today? share your daily activities on Wefarm online to inspire others & to keep track of your progress. Join now we.fm/sms/i6',
            '/sms/i6',
            NOW(),
            'wefarmtest'
    )
INSERT
INTO
    public.target_group(id,
                        target_group_name,
                        content,
                        keyword,
                        created_at,
                        created_by)
SELECT
    id,
    target_group_name,
    content,
    keyword,
    created_at,
    created_by
FROM
    target_group_data
ON CONFLICT DO NOTHING;
