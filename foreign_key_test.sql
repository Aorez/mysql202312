-- Active: 1694414831540@@127.0.0.1@3306@test
drop TABLE if EXISTS role;
drop TABLE if EXISTS `user`;
CREATE TABLE `role`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `role_name` VARCHAR(10) NOT NULL
);
CREATE TABLE `user`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user_name` VARCHAR(10) NOT NULL,
    `role_id` INT NOT NULL,
    CONSTRAINT role_id_foreign_key Foreign Key (role_id) REFERENCES role(id)
);
INSERT into `role` (role_name) VALUES('admin');
SELECT * FROM `role`;
insert into `user` (user_name, role_id) VALUES('user1',1);
select * from `user`;

-- cannot delete or update a parent row
-- a FOREIGN key CONSTRAINT fails
DELETE from role;
-- cannot add or update a child row
-- a FOREIGN key CONSTRAINT fails
insert into user (user_name,role_id) VALUES('user2',2);
ALTER Table user drop FOREIGN key role_id_foreign_key;
-- 删除外键后插入数据成功
insert into user (user_name,role_id) VALUES('user2',2);

-- cannot add or update a child row
-- a FOREIGN key CONSTRAINT fails
alter Table user add constraint FOREIGN key (role_id) REFERENCES role(id);
delete from user where user_name='user2';
-- 删除数据后添加外键成功
alter Table user add constraint FOREIGN key (role_id) REFERENCES role(id);





-- 外键设置格式
-- 查看所有外键
show create table user;

drop TABLE if EXISTS role;
drop TABLE if EXISTS `user`;
CREATE TABLE `role`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `role_name` VARCHAR(10) NOT NULL
);
CREATE TABLE `user`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user_name` VARCHAR(10) NOT NULL,
    `role_id` INT NOT NULL,
    CONSTRAINT role_id_foreign_key Foreign Key (role_id) REFERENCES role(id)
);
-- 所有外键
-- key role_id_foreign_key (role_id)
-- constraint role_id_foreign_key foreign key...

-- 重复添加外键
alter table user add constraint FOREIGN key role_id_foreign_key (role_id) REFERENCES role(id);
alter table user add constraint FOREIGN key role_id_foreign_key (role_id) REFERENCES role(id) on update CASCADE on delete CASCADE;
-- 所有外键
-- key role_id_foreign_key (role_id)
-- constraint role_id_foreign_key foreign key...
-- constraint user_ibfk_1 foreign key...
-- constraint user_ibfk_2 foreign key...on delete cascade
-- 多出来两个冗余外键

-- 删除当前所有外键
alter table user drop foreign key role_id_foreign_key;
alter table user drop FOREIGN key user_ibfk_1;
alter table user drop FOREIGN key user_ibfk_2;
alter table user drop key role_id_foreign_key;

-- 重新添加外键
-- 不指定外键名称
alter Table user add constraint FOREIGN key (role_id) REFERENCES role(id);
alter Table user add constraint FOREIGN key (role_id) REFERENCES role(id) on update CASCADE on delete CASCADE;
-- key role_id (role_id)
-- CONSTRAINT user_ibfk_1 FOREIGN key...
-- CONSTRAINT user_ibfk_2 FOREIGN key... on delete cascade

alter table user drop key role_id;
-- cannot drop index role_id
-- needed in a FOREIGN key CONSTRAINT
-- 要先删除foreign key，再删除key

alter table user drop foreign key user_ibfk_1;
alter table user drop foreign key user_ibfk_2;
alter table user drop key role_id;

-- 可以不加constraint







-- 删除/更新行为
-- no ACTION
-- restrict
-- cascade
-- set NULL
-- set DEFAULT

-- 查询全部
SELECT * from user;
SELECT * from role;

-- 准备no action的外键
-- 默认为no action，no action与restrict一致
-- 原role.id=1，user.role_id=1，尝试修改role.id=0或者改回role.id=1
-- cannot delete or update a parent row
-- a FOREIGN key CONSTRAINT fails
update role set id=0 WHERE role_name='admin';
-- id本来就是1，修改成功
update role set id=1 WHERE role_name='admin';
