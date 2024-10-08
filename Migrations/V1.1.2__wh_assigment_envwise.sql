use schema CI_CD_POC;
CREATE TASK test_task
 WAREHOUSE = {{warehouse_name}} //warehouse name value will change according to the       workflow file which gets triggered according to the branch
 SCHEDULE = '60 minute'
AS
SELECT CURRENT_TIMESTAMP;
alter task test_task suspend;
