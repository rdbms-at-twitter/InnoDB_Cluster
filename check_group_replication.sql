SELECT MEMBER_ID, MEMBER_HOST, MEMBER_PORT, MEMBER_STATE,
IF(global_status.VARIABLE_NAME IS NOT NULL, 'PRIMARY', 'SECONDARY') AS MEMBER_ROLE
FROM performance_schema.replication_group_members
LEFT JOIN performance_schema.global_status ON global_status.VARIABLE_NAME = 'group_replication_primary_member'
AND global_status.VARIABLE_VALUE = replication_group_members.MEMBER_ID;
