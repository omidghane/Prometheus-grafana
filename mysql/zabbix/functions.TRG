TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger functions_insert after insert on functions\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (7,new.functionid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger functions_update after update on functions\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (7,old.functionid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger functions_delete before delete on functions\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (7,old.functionid,3,unix_timestamp())'
sql_modes=1436549152 1436549152 1436549152
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=174850981557 174850981557 174850981558
