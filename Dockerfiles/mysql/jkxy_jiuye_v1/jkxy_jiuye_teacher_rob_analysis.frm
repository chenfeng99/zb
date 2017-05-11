TYPE=VIEW
query=select `uhr`.`job_id` AS `job_id`,`rhh`.`teacher_uid` AS `teacher_id`,`rhh`.`money` AS `money`,`rhh`.`multiple` AS `multiple`,`rhh`.`created_at` AS `rob_at`,`rhh`.`status` AS `status`,`rhh`.`finish_at` AS `finish_at`,`uhei`.`star` AS `star` from ((`jkxy_jiuye_v1`.`jkxy_jiuye_rob_homework_history` `rhh` join `jkxy_jiuye_v1`.`jkxy_jiuye_user_homework_relation` `uhr` on((`uhr`.`id` = `rhh`.`user_homework_relation_id`))) left join `jkxy_jiuye_v1`.`jkxy_jiuye_user_homework_evaluate_info` `uhei` on(((`uhei`.`user_homework_id` = `uhr`.`id`) and (`uhei`.`is_delete` = 0)))) where ((`rhh`.`status` in (0,1,-(1),-(2))) and (`rhh`.`is_delete` = 0))
md5=2d731c01e4616d8b4e2914737bee2970
updatable=0
algorithm=0
definer_user=jkxy_jiuye
definer_host=192.168.100.%
suid=1
with_check_option=0
timestamp=2017-04-21 05:53:39
create-version=1
source=select `uhr`.`job_id` AS `job_id`,`rhh`.`teacher_uid` AS `teacher_id`,`rhh`.`money` AS `money`,`rhh`.`multiple` AS `multiple`,`rhh`.`created_at` AS `rob_at`,`rhh`.`status` AS `status`,`rhh`.`finish_at` AS `finish_at`,`uhei`.`star` AS `star` from ((`jkxy_jiuye_rob_homework_history` `rhh` join `jkxy_jiuye_user_homework_relation` `uhr` on((`uhr`.`id` = `rhh`.`user_homework_relation_id`))) left join `jkxy_jiuye_user_homework_evaluate_info` `uhei` on(((`uhei`.`user_homework_id` = `uhr`.`id`) and (`uhei`.`is_delete` = 0)))) where ((`rhh`.`status` in (0,1,-(1),-(2))) and (`rhh`.`is_delete` = 0))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `uhr`.`job_id` AS `job_id`,`rhh`.`teacher_uid` AS `teacher_id`,`rhh`.`money` AS `money`,`rhh`.`multiple` AS `multiple`,`rhh`.`created_at` AS `rob_at`,`rhh`.`status` AS `status`,`rhh`.`finish_at` AS `finish_at`,`uhei`.`star` AS `star` from ((`jkxy_jiuye_v1`.`jkxy_jiuye_rob_homework_history` `rhh` join `jkxy_jiuye_v1`.`jkxy_jiuye_user_homework_relation` `uhr` on((`uhr`.`id` = `rhh`.`user_homework_relation_id`))) left join `jkxy_jiuye_v1`.`jkxy_jiuye_user_homework_evaluate_info` `uhei` on(((`uhei`.`user_homework_id` = `uhr`.`id`) and (`uhei`.`is_delete` = 0)))) where ((`rhh`.`status` in (0,1,-(1),-(2))) and (`rhh`.`is_delete` = 0))
