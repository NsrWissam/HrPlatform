-- begin TP_ADDRESS
create table TP_ADDRESS (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CITY varchar(100) not null,
    STREET varchar(100) not null,
    COUNTRY varchar(100) not null,
    NUMBER_ integer not null,
    POSTALCODE integer not null,
    --
    primary key (ID)
)^
-- end TP_ADDRESS
-- begin TP_ADMIN
create table TP_ADMIN (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end TP_ADMIN
-- begin TP_BOOK
create table TP_BOOK (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    AUTHOR varchar(50) not null,
    TITLE varchar(50) not null,
    YEAR_ integer not null,
    COST decimal(19, 2) not null,
    ISBN varchar(50) not null,
    PUBLISHER varchar(50) not null,
    --
    primary key (ID)
)^
-- end TP_BOOK
-- begin TP_CERTIFICATE
create table TP_CERTIFICATE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    DESCRIPTION longvarchar not null,
    --
    primary key (ID)
)^
-- end TP_CERTIFICATE
-- begin TP_EMPLOYEE
create table TP_EMPLOYEE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end TP_EMPLOYEE
-- begin TP_HR_EMPLOYEE
create table TP_HR_EMPLOYEE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end TP_HR_EMPLOYEE
-- begin TP_MANAGER
create table TP_MANAGER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end TP_MANAGER
-- begin TP_LOCATION
create table TP_LOCATION (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ADDRESS_ID varchar(36) not null,
    LOCATION_NAME varchar(100) not null,
    --
    primary key (ID)
)^
-- end TP_LOCATION
-- begin TP_SURVEY
create table TP_SURVEY (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    primary key (ID)
)^
-- end TP_SURVEY
-- begin TP_TRAINING
create table TP_TRAINING (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    DESCRIPTION longvarchar not null,
    START_DATE timestamp not null,
    END_DATE timestamp not null,
    STATUS integer not null,
    SURVEY_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end TP_TRAINING
-- begin TP_TRAINING_LOCATION_LINK
create table TP_TRAINING_LOCATION_LINK (
    TRAINING_ID varchar(36) not null,
    LOCATION_ID varchar(36) not null,
    primary key (TRAINING_ID, LOCATION_ID)
)^
-- end TP_TRAINING_LOCATION_LINK
-- begin TP_TRAINING_EMPLOYEE_LINK
create table TP_TRAINING_EMPLOYEE_LINK (
    TRAINING_ID varchar(36) not null,
    EMPLOYEE_ID varchar(36) not null,
    primary key (TRAINING_ID, EMPLOYEE_ID)
)^
-- end TP_TRAINING_EMPLOYEE_LINK
