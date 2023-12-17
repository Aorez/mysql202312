-- Active: 1694414831540@@127.0.0.1@3306@test

DROP Table IF EXISTS tb_user;

create table tb_user(
id int primary key auto_increment comment '主键',
name varchar(50) not null comment '用户名',
phone varchar(11) not null comment '手机号',
email varchar(100) comment '邮箱',
profession varchar(11) comment '专业',
age tinyint unsigned comment '年龄',
gender char(1) comment '性别 , 1: 男, 2: 女',
status char(1) comment '状态',
createtime datetime comment '创建时间'
) comment '系统用户表';
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('吕布', '17799990000', 'lvbu666@163.com', '软件工程', 23, '1',
'6', '2001-02-02 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('曹操', '17799990001', 'caocao666@qq.com', '通讯工程', 33,
'1', '0', '2001-03-05 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('赵云', '17799990002', '17799990@139.com', '英语', 34, '1',
'2', '2002-03-02 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('孙悟空', '17799990003', '17799990@sina.com', '工程造价', 54,
'1', '0', '2001-07-02 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('花木兰', '17799990004', '19980729@sina.com', '软件工程', 23,
'2', '1', '2001-04-22 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('大乔', '17799990005', 'daqiao666@sina.com', '舞蹈', 22, '2',
'0', '2001-02-07 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('露娜', '17799990006', 'luna_love@sina.com', '应用数学', 24,
'2', '0', '2001-02-08 00:00:00');

INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('程咬金', '17799990007', 'chengyaojin@163.com', '化工', 38,
'1', '5', '2001-05-23 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('项羽', '17799990008', 'xiaoyu666@qq.com', '金属材料', 43,
'1', '0', '2001-09-18 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('白起', '17799990009', 'baiqi666@sina.com', '机械工程及其自动
化', 27, '1', '2', '2001-08-16 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('韩信', '17799990010', 'hanxin520@163.com', '无机非金属材料工
程', 27, '1', '0', '2001-06-12 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('荆轲', '17799990011', 'jingke123@163.com', '会计', 29, '1',
'0', '2001-05-11 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('兰陵王', '17799990012', 'lanlinwang666@126.com', '工程造价',
44, '1', '1', '2001-04-09 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('狂铁', '17799990013', 'kuangtie@sina.com', '应用数学', 43,
'1', '2', '2001-04-10 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('貂蝉', '17799990014', '84958948374@qq.com', '软件工程', 40,
'2', '3', '2001-02-12 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('妲己', '17799990015', '2783238293@qq.com', '软件工程', 31,
'2', '0', '2001-01-30 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('芈月', '17799990016', 'xiaomin2001@sina.com', '工业经济', 35,
'2', '0', '2000-05-03 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('嬴政', '17799990017', '8839434342@qq.com', '化工', 38, '1',
'1', '2001-08-08 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('狄仁杰', '17799990018', 'jujiamlm8166@163.com', '国际贸易',
30, '1', '0', '2007-03-12 00:00:00');

INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('安琪拉', '17799990019', 'jdodm1h@126.com', '城市规划', 51,
'2', '0', '2001-08-15 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('典韦', '17799990020', 'ycaunanjian@163.com', '城市规划', 52,
'1', '2', '2000-04-12 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('廉颇', '17799990021', 'lianpo321@126.com', '土木工程', 19,
'1', '3', '2002-07-18 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('后羿', '17799990022', 'altycj2000@139.com', '城市园林', 20,
'1', '0', '2002-03-10 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('姜子牙', '17799990023', '37483844@qq.com', '工程造价', 29,
'1', '4', '2003-05-26 00:00:00');

SELECT * FROM tb_user;
show index from tb_user;
show global status like 'Com_______';
show VARIABLES like 'slow_query_log';
select @@have_profiling;

-- name，姓名，非空，可能重复，创建常规索引
CREATE INDEX idx_user_name ON tb_user(name);

-- phone，手机号码，非空，应该是唯一的，创建唯一索引
create unique index idx_user_phone on tb_user(phone);

-- profession age status创建联合索引
create index idx_user_pro_age_sta on tb_user(
    profession,age,status
);

-- email创建常规索引
create index idx_user_email on tb_user(email);

set profiling=1;
set profiling=0;
select * from tb_user;
select * from tb_user where id = 1;
select * from tb_user where name = '白起';
show profiles;
show profile for query 1;
show profile cpu for query 1;

drop table if exists tb_sku;

CREATE TABLE `tb_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `sn` varchar(100) NOT NULL COMMENT '商品条码',
  `name` varchar(200) NOT NULL COMMENT 'SKU名称',
  `price` int(20) NOT NULL COMMENT '价格（分）',
  `num` int(10) NOT NULL COMMENT '库存数量',
  `alert_num` int(11) DEFAULT NULL COMMENT '库存预警数量',
  `image` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `images` varchar(2000) DEFAULT NULL COMMENT '商品图片列表',
  `weight` int(11) DEFAULT NULL COMMENT '重量（克）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `category_name` varchar(200) DEFAULT NULL COMMENT '类目名称',
  `brand_name` varchar(100) DEFAULT NULL COMMENT '品牌名称',
  `spec` varchar(200) DEFAULT NULL COMMENT '规格',
  `sale_num` int(11) DEFAULT '0' COMMENT '销量',
  `comment_num` int(11) DEFAULT '0' COMMENT '评论数',
  `status` char(1) DEFAULT '1' COMMENT '商品状态 1-正常，2-下架，3-删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品表';
-- 200w数据
load data local infile 'tb_sku1.sql' into table `tb_sku` fields terminated by ',' lines terminated by '\n';
-- 毫秒级别
select * from tb_sku where id=1 \G;
-- 三四秒
select * from tb_sku where sn='100000003145001' \G;
-- 创建索引，12秒左右
create index idx_sku_sn on tb_sku(sn);
-- 毫秒级别
select * from tb_sku where sn='100000003145001' \G;

-- ref const,const,const
-- key_len 54
-- rows 1
explain select * from tb_user
where profession='软件工程' and age=31 and status='0'
\G;

-- ref const,const
-- key_len 49
-- rows 1
explain select * from tb_user
where profession='软件工程' and age=31
\G;

-- ref const,const
-- key_len 47
-- rows 4
explain select * from tb_user
where profession='软件工程'
\G;

-- profession索引长度47，age 2，status 5

-- 不满足最左前缀匹配法则，索引失效
-- 上面索引有效，filtered100%，索引失效filtered很低
explain select * from tb_user
where age=31 and status='0'
\G;
explain select * from tb_user
where status='0'
\G;

-- 只要最左前缀匹配的列在where条件中存在即可，与SQL书写顺序无关
EXPLAIN select * from tb_user
where status='0' and age=31 and profession='软件工程'
\G;

-- 索引长度49，status字段索引失效
-- 出现范围查询大于或小于时，范围查询字段后面的字段索引失效
EXPLAIN select * from tb_user
where profession='软件工程' and age>30 and status='0'
\G;

-- 索引长度54
-- 范围查询大于等于或小于等于不会导致索引失效
EXPLAIN select * from tb_user
where profession='软件工程' and age>=30 and status='0'
\G;
EXPLAIN select * from tb_user
where profession='软件工程' and age BETWEEN 30 and 40 and status='0'
\G;

-- phone索引
EXPLAIN SELECT * from tb_user
where phone='17799990015'
\G;
-- 最后两位是15
-- 索引列运算，索引失效
EXPLAIN SELECT * from tb_user
where substring(phone,10,2)='15'
\G;
-- 字符串没有加引号，隐式类型转换，索引失效
EXPLAIN SELECT * from tb_user
where phone=17799990015
\G;

-- 三者索引有效
EXPLAIN SELECT * from tb_user
WHERE profession LIKE '软件%'
\g;
EXPLAIN SELECT * from tb_user
WHERE profession LIKE '软%工%'
\g;
EXPLAIN SELECT * from tb_user
WHERE profession LIKE '软件%' and age=31 and status='0'
\g;
-- 头部模糊查询，索引失效
EXPLAIN SELECT * from tb_user
WHERE profession LIKE '%工程'
\g;
EXPLAIN SELECT * from tb_user
WHERE profession LIKE '%工%'
\g;

EXPLAIN SELECT * FROM tb_user
WHERE id=10 or email LIKE '2783238293%'
\g;
-- or条件中有一个字段不是索引列，索引都失效
EXPLAIN SELECT * FROM tb_user
WHERE id=10 or age=31
\g;
EXPLAIN SELECT * FROM tb_user
WHERE id=10 or email LIKE '2783238293%' or age=31
\g;

explain select * from tb_user where phone >= '17799990020' \g;
-- MySQL评估使用索引与全表扫描的效率，如果全表扫描更快，则放弃使用索引。
-- 索引是用来索引少量数据的，如果需要返回大批量数据，全表扫描反而更快。
-- 因此下面这条SQL放弃索引，使用全表扫描。
explain select * from tb_user where phone >= '17799990005' \g;

-- is null 和 is not null
EXPLAIN SELECT * from tb_user
WHERE profession is NULL
\g;
EXPLAIN SELECT * from tb_user
WHERE profession is not NULL
\g;
-- 全部更新为null之后，profession中null值很多，MySQL评估后is null会放弃索引，使用全表扫描。
-- is not null则仍然使用索引，与更新前相反
UPDATE tb_user set profession=NULL;

CREATE INDEX idx_user_pro on tb_user(profession);
-- 有联合索引idx_user_pro_age_sta
-- 也有单列索引idx_user_pro
-- MySQL选择了联合索引
EXPLAIN SELECT * from tb_user
WHERE profession='软件工程'
\g;

-- use index(index_name)建议MySQL使用某个索引
EXPLAIN SELECT * from tb_user
use INDEX(idx_user_pro)
WHERE profession='软件工程'
\g;
-- ignore index(index_name)忽略某个索引
EXPLAIN SELECT * from tb_user
IGNORE INDEX(idx_user_pro_age_sta)
WHERE profession='软件工程'
\g;
-- force index(index_name)强制使用某个索引
EXPLAIN SELECT * from tb_user
force INDEX(idx_user_pro)
WHERE profession='软件工程'
\g;

-- Extra
-- Using index
EXPLAIN SELECT id
from tb_user
WHERE profession='软件工程' and age=31 and status='0'
\g;
-- Using index
EXPLAIN SELECT id,profession,age
from tb_user
WHERE profession='软件工程' and age=31 and status='0'
\g;
-- NULL
-- MySQL8可能是Using index condition
EXPLAIN SELECT id,profession,name
from tb_user
WHERE profession='软件工程' and age=31 and status='0'
\g;
-- using index使用了索引，并且查询的列都能在索引列中找到，不需要回表查询。
-- 因为idx_pro_age_sta是二级索引，索引树叶子节点保存了主键id，因此只要查询的列在id pro age sta中，就不需要回表查询。
-- 这个操作叫做覆盖索引。

-- 前缀索引
-- 为tb_user的email创建长度5的前缀索引
CREATE INDEX idx_user_email_5 on tb_user(email(5));
SHOW INDEX FROM tb_user;
-- 前缀长度
-- 可以通过选择性来决定
-- 选择性是指不重复的索引值的数量和记录总数的比值
-- 该值越大查询效率越高，唯一索引的选择性是1
SELECT COUNT(DISTINCT email) / COUNT(*)
FROM tb_user;
SELECT COUNT(DISTINCT SUBSTRING(email,1,5)) / COUNT(*) FROM tb_user;

EXPLAIN
SELECT id,phone,name FROM tb_user
WHERE phone='17799990010' AND name='韩信'
\g;
-- possible key有phone和name两个单列索引，但是最终key为phone索引
-- 因为查询了name字段，所以需要回表查询
-- 再创建phone和name的联合索引
CREATE INDEX idx_user_phone_name on tb_user(phone,name);
EXPLAIN
SELECT id,phone,name FROM tb_user
WHERE phone='17799990010' AND name='韩信'
\g;
-- 预计这时会选择联合索引，但是还是使用了phone索引，不知道是为什么
-- 如果多个查询条件经常同时出现，考虑对这多个字段建立联合索引。