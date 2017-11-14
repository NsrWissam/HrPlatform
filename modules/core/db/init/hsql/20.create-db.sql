-- begin TP_ADMIN
alter table TP_ADMIN add constraint FK_TP_ADMIN_USER foreign key (USER_ID) references SEC_USER(ID)^
create index IDX_TP_ADMIN_USER on TP_ADMIN (USER_ID)^
-- end TP_ADMIN
-- begin TP_EMPLOYEE
alter table TP_EMPLOYEE add constraint FK_TP_EMPLOYEE_USER foreign key (USER_ID) references SEC_USER(ID)^
create index IDX_TP_EMPLOYEE_USER on TP_EMPLOYEE (USER_ID)^
-- end TP_EMPLOYEE
-- begin TP_HR_EMPLOYEE
alter table TP_HR_EMPLOYEE add constraint FK_TP_HR_EMPLOYEE_USER foreign key (USER_ID) references SEC_USER(ID)^
create index IDX_TP_HR_EMPLOYEE_USER on TP_HR_EMPLOYEE (USER_ID)^
-- end TP_HR_EMPLOYEE
-- begin TP_MANAGER
alter table TP_MANAGER add constraint FK_TP_MANAGER_USER foreign key (USER_ID) references SEC_USER(ID)^
create index IDX_TP_MANAGER_USER on TP_MANAGER (USER_ID)^
-- end TP_MANAGER
-- begin TP_LOCATION
alter table TP_LOCATION add constraint FK_TP_LOCATION_ADDRESS foreign key (ADDRESS_ID) references TP_ADDRESS(ID)^
create unique index IDX_TP_LOCATION_UNIQ_LOCATION_NAME on TP_LOCATION (LOCATION_NAME) ^
create index IDX_TP_LOCATION_ADDRESS on TP_LOCATION (ADDRESS_ID)^
-- end TP_LOCATION
-- begin TP_TRAINING
alter table TP_TRAINING add constraint FK_TP_TRAINING_SURVEY foreign key (SURVEY_ID) references TP_SURVEY(ID)^
-- end TP_TRAINING
-- begin TP_TRAINING_LOCATION_LINK
alter table TP_TRAINING_LOCATION_LINK add constraint FK_TRALOC_TRAINING foreign key (TRAINING_ID) references TP_TRAINING(ID)^
alter table TP_TRAINING_LOCATION_LINK add constraint FK_TRALOC_LOCATION foreign key (LOCATION_ID) references TP_LOCATION(ID)^
-- end TP_TRAINING_LOCATION_LINK
-- begin TP_TRAINING_EMPLOYEE_LINK
alter table TP_TRAINING_EMPLOYEE_LINK add constraint FK_TRAEMP_TRAINING foreign key (TRAINING_ID) references TP_TRAINING(ID)^
alter table TP_TRAINING_EMPLOYEE_LINK add constraint FK_TRAEMP_EMPLOYEE foreign key (EMPLOYEE_ID) references TP_EMPLOYEE(ID)^
-- end TP_TRAINING_EMPLOYEE_LINK
