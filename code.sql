CREATE OR REPLACE TABLE TEST.agent_details (
    agent_name         STRING,
    extension          STRING,
    team               STRING,
    manager_name       STRING,
    manager_id         STRING,
    recordinsertdate   DATE
);

INSERT INTO TEST.agent_details (agent_name, extension, team, manager_name, manager_id, recordinsertdate)
SELECT
    a.agent_name,
    a.extension,
    a.team,
    a.manager_name,
    b.manager_id,
    CURRENT_DATE() AS recordinsertdate
FROM
    TABLE_A a
JOIN
    TABLE_B b
    ON a.manager_name = b.manager_name;
