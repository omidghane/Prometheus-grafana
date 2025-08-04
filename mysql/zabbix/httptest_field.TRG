TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger httptest_field_insert after insert on httptest_field\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (12,new.httptest_fieldid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httptest_field_update after update on httptest_field\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (12,old.httptest_fieldid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httptest_field_delete before delete on httptest_field\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (12,old.httptest_fieldid,3,unix_timestamp())'
sql_modes=1436549152 1436549152 1436549152
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=174850981559 174850981559 174850981559
