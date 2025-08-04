TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger httpstep_insert after insert on httpstep\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (14,new.httpstepid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httpstep_update after update on httpstep\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (14,old.httpstepid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httpstep_delete before delete on httpstep\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (14,old.httpstepid,3,unix_timestamp())'
sql_modes=1436549152 1436549152 1436549152
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=174850981555 174850981555 174850981555
