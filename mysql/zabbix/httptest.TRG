TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger httptest_insert after insert on httptest\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (11,new.httptestid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httptest_update after update on httptest\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (11,old.httptestid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httptest_delete before delete on httptest\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (11,old.httptestid,3,unix_timestamp())'
sql_modes=1436549152 1436549152 1436549152
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=174850981555 174850981555 174850981555
