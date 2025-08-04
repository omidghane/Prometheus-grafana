TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger items_insert after insert on items\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (3,new.itemid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger items_update after update on items\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (3,old.itemid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger items_delete before delete on items\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (3,old.itemid,3,unix_timestamp())'
sql_modes=1436549152 1436549152 1436549152
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=174850981555 174850981556 174850981556
