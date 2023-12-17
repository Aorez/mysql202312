# MySQL

v5.7.24

v8.0.26

- [MySQL](#mysql)
  - [SQL Classification](#sql-classification)
  - [Number](#number)
  - [String](#string)
  - [Date](#date)
  - [Database](#database)
  - [Table](#table)
  - [Query](#query)
  - [User](#user)
  - [Permission](#permission)
  - [Function](#function)
    - [String Function](#string-function)
    - [Number Function](#number-function)
    - [Date Function](#date-function)
    - [流程控制函数](#流程控制函数)
  - [约束](#约束)
    - [Foreign Key](#foreign-key)
  - [多表查询](#多表查询)
  - [事务](#事务)
    - [ACID](#acid)
    - [事务隔离级别](#事务隔离级别)
  - [存储引擎](#存储引擎)
  - [InnoDB](#innodb)
    - [逻辑存储结构](#逻辑存储结构)
  - [MyISAM](#myisam)
  - [Memory](#memory)
  - [存储引擎的选择](#存储引擎的选择)
  - [索引](#索引)
  - [创建索引](#创建索引)
  - [索引测试](#索引测试)
  - [SQL执行频率](#sql执行频率)
  - [慢查询日志](#慢查询日志)
  - [profile](#profile)
  - [explain](#explain)
  - [最左前缀匹配法则](#最左前缀匹配法则)
  - [索引失效](#索引失效)
  - [插入数据优化](#插入数据优化)
  - [主键优化](#主键优化)
  - [order by优化](#order-by优化)
  - [group by优化](#group-by优化)
  - [limit优化](#limit优化)
  - [count优化](#count优化)
  - [update优化](#update优化)
  - [索引设计原则](#索引设计原则)
  - [从这里开始不再另外保存sql文件](#从这里开始不再另外保存sql文件)
  - [视图](#视图)
  - [视图的作用](#视图的作用)
  - [存储过程](#存储过程)
  - [变量](#变量)
  - [系统变量](#系统变量)
  - [用户定义变量](#用户定义变量)
  - [局部变量](#局部变量)
  - [if语句](#if语句)
  - [参数](#参数)
  - [case](#case)
  - [while](#while)
  - [repeat](#repeat)
  - [loop](#loop)
  - [游标](#游标)
  - [条件处理程序handler](#条件处理程序handler)
  - [存储函数](#存储函数)
  - [触发器](#触发器)
  - [锁](#锁)
  - [全局锁](#全局锁)
  - [表级锁](#表级锁)
  - [表锁](#表锁)
  - [元数据锁](#元数据锁)
  - [意向锁](#意向锁)
  - [行级锁](#行级锁)
  - [行锁](#行锁)
  - [间隙锁临键锁](#间隙锁临键锁)
  - [InnoDB](#innodb-1)
  - [InnoDB逻辑存储结构](#innodb逻辑存储结构)
  - [InnoDB架构](#innodb架构)
  - [InnoDB内存结构](#innodb内存结构)
  - [buffer pool](#buffer-pool)
  - [change buffer](#change-buffer)
  - [adative hash index](#adative-hash-index)
  - [log buffer](#log-buffer)
  - [InnoDB磁盘结构](#innodb磁盘结构)
  - [system tablespace](#system-tablespace)
  - [file-per-table tablespaces](#file-per-table-tablespaces)
  - [general tablespaces](#general-tablespaces)
  - [undo tablespaces](#undo-tablespaces)
  - [temporary tablespaces](#temporary-tablespaces)
  - [doublewrite buffer files](#doublewrite-buffer-files)
  - [redo log](#redo-log)
  - [InnoDB后台线程](#innodb后台线程)
  - [Master Thread](#master-thread)
  - [IO Thread](#io-thread)
  - [Purge Thread](#purge-thread)
  - [Page Cleaner Thread](#page-cleaner-thread)
  - [事务ACID](#事务acid)
  - [事务](#事务-1)
  - [redo log](#redo-log-1)
  - [undo log](#undo-log)
  - [MVCC](#mvcc)
  - [当前读](#当前读)
  - [快照读](#快照读)
  - [MVCC](#mvcc-1)
  - [隐藏字段](#隐藏字段)
  - [undo log](#undo-log-1)
  - [版本链](#版本链)
  - [readview](#readview)
  - [RC、RR隔离级别下read view匹配过程](#rcrr隔离级别下read-view匹配过程)
  - [MySQL系统数据库](#mysql系统数据库)
  - [mysql客户端](#mysql客户端)
  - [mysqladmin](#mysqladmin)
  - [mysqlbinlog](#mysqlbinlog)
  - [mysqlshow](#mysqlshow)
  - [mysqldump](#mysqldump)
  - [mysqlimport和source](#mysqlimport和source)
  - [日志](#日志)
  - [错误日志](#错误日志)
  - [二进制日志](#二进制日志)
  - [二进制日志日志格式](#二进制日志日志格式)
  - [查看二进制日志](#查看二进制日志)
  - [删除二进制日志](#删除二进制日志)
  - [查询日志](#查询日志)
  - [慢查询日志](#慢查询日志-1)
  - [主从复制](#主从复制)
  - [主从复制过程](#主从复制过程)
  - [主从配置](#主从配置)
  - [分库分表](#分库分表)
  - [拆分策略](#拆分策略)
  - [分库分表实现技术](#分库分表实现技术)
  - [mycat](#mycat)
  - [mycat安装与使用](#mycat安装与使用)
  - [mycat读写分离](#mycat读写分离)

## SQL Classification

|    |    |    |
| -- | -- | -- |
| DDL | Data definition language | Define database objects (database, table, field...) |
| DML | Data manipulation language | Insert, delete, update data in database |
| DQL | Data query language | select data from database |
| DCL | Data control language | Manage database users and permissions |

## Number

| Type | Size | Signed Range | Unsigned Range
|------|------|--------------|-
| tinyint | 1 byte | (-128, 127) | (0, 255)
| smallint | 2 bytes | (-32768, 32767) | (0, 65535)
| mediumint | 3 bytes | (-2^23, 2^23-1) | (0, 2^24-1)
| int / integer | 4 bytes | (-2147483648, 2147483647) | (0, 2^32-1)
| bigint | 8 bytes | (-2^63, 2^63-1) | (0, 2^64-1)
| float | 4 bytes
| double | 8 bytes
| decimal

## String

| Type | Size | Description
|------|------|-
| char | 0-255 bytes | 定长字符串
| varchar | 0-65535 bytes | 变长字符串
| blob | 0-65535 bytes | 二进制长文本
| text | 0-65535 bytes | 长文本

## Date

| Type | Size | Range | Format
|------|------|-------|-
| date | 3 | 1000-01-01 to 9999-12-31 | yyyy-mm-dd
| time | 3 | -838:59:59 to 838:59:59 | hh:mm:ss
| year | 1 | 1901-2155 | yyyy
| datetime | 8 | 1000-01-01 00:00:00 to 9999-12-31 23:59:59 | yyyy-mm-dd hh:mm:ss
| timestamp | 4 | 1970-01-01 00:00:01 to 2038-01-19 03:14:07 | yyyy-mm-dd hh:mm:ss

## Database

```sql
show databases;

select database();

create database [ if not exists ] 数据库 [ default charset 字符集 ] [ collate 排序规则 ];

drop database [ if exists ] 数据库;

use 数据库;
```

## Table

```sql
show tables;

desc 表名;
-- Field Type Null Key Default Extra

show create table 表名;

create table 表名(
    字段1 类型 [ comment '备注' ],
    字段2...
) [ comment '备注' ];

alter table 表名 add 字段名 类型 [ comment '备注' ];
alter table 表名 modify 字段名 新类型;
alter table 表名 change 字段名 新字段名 新类型;
alter table 表名 drop 字段名;
alter table 表名 rename to 新表名;

drop table [ if exists ] 表名;

truncate table 表名;

insert into 表名 (字段1, 字段2...) values (值1, 值2...);
insert into 表名 (值1, 值2...);
insert into 表名 (值1, 值2...), (值1, 值2...)...;

update 表名 set 字段1=新值, 字段2=新值... [ where 条件 ];
-- 如果没有条件，会修改所有数据

delete from 表名 [ where 条件 ];
```

## Query

```sql
select distinct ...

-- 查询没有身份证号的员工
select * from emp where idcard is null;
-- 查询有身份证号的员工
select * from emp where idcard is not null;
-- 查询年龄在[15, 20]之间的员工
select * from emp where age between 15 and 20;
-- 查询年龄为18、20或40的员工
select * from emp where age in(18,20,40);
-- 查询姓名为两个字的员工
select * from emp where name like '__';
-- 查询身份证号最后一位是X的员工
select * from emp where idcard like '%X';

-- null值不参与聚合函数的运算
-- 根据性别分组，统计男性和女性的数量
select gender, count(*) from emp group by gender;
-- 根据性别分组，统计男性和女性的平均年龄
select gender, avg(age) from emp group by gender;
-- 查询年龄小于45的员工，并根据工作地址分组，获取员工数量大于等于3的工作地址
select workaddress, count(*) address_count
from emp
where age<45
group by workaddress
having address_count>=3;
( having count(*)>=3 )

-- 根据年龄对公司的员工进行升序排序，年龄相同，再按照入职时间进行降序排序
select * from emp order by age asc, entrydate desc;

-- 查询第1页员工数据，每页展示10条记录
select * from emp limit 0, 10;
select * from emp limit 10;
-- 查询第2页员工数据，每页展示10条记录
select * from emp limit 10, 10;
```

执行顺序-from-where-group by-having-select-order by-limit

having应该在聚合函数之后执行

## User

```sql
select * from mysql.user;
-- Host User Select_priv ...
-- root mysql.session mysql.sys
-- mysql中通过host和user来唯一标识一个用户

create user '用户名'@'主机名' identified by '密码';
alter user '用户名'@'主机名' identified with mysql_native_password by '新密码';
drop user '用户名'@'主机名';

-- 创建用户，只能够在当前主机访问;
create user 'user1'@'localhost' identified by '111111';
-- 创建用户，可以在任意主机访问该数据库;
create user 'user1'@'%' identified by '111111';
```

## Permission

```sql
show grants for '用户名'@'主机名';

-- 数据库名、表名，可以用通配符*
grant 权限列表 on 数据库名.表名 to '用户名'@'主机名';
grant all on 数据库名.表名 to '用户名'@'主机名';
revoke 权限列表 on 数据库名.表名 to '用户名'@'主机名';
```

## Function

### String Function

```sql
-- 'hahaha'
select concat('ha','ha','ha') ha;
-- 'aab'
select lower('AAB') as aab;
-- 'AAB'
select upper('aab');
-- '*****h'
select lpad('h',6,'*');
-- 'h*****'
select rpad('h',6,'*');
-- 'ha'
select trim('  ha  ');
-- 下标从1开始
-- 'haha'
select substring('aahaha',3,4);
```

### Number Function

```sql
-- 向上取整
ceil(0.5) -- 1
ceil(1.5) -- 2
-- 向下取整
floor(0.5) -- 0
floor(1.5) -- 1

round(4.5) -- 5
round(4.5,2) -- 4.50

mod(5,3) -- 2

-- 0-1内的随机数
rand()
```

### Date Function

```sql
curdate() -- 2023-09-11
curtime() -- 10:52:01
now() -- 2023-09-11 10:52:33
year(now()) -- 2023
month(now()) -- 9
day(now()) -- 11

-- year/month/day/hour/minute/second
date_add(now(),interval 10 year) -- 2033-09-11 10:55:55
date_add('2022-11-11',interval 3 hour) -- 2022-11-11 03:00:00
date_add('2022-11-11',interval 3 day) -- 2022-11-14

datediff(now(), now()) -- 0
datediff('2022-11-11','2022-11-22') -- -11
datediff('2022-11-22','2022-11-11') -- 11
datediff(now(),'2022-11-11') -- 304
```

### 流程控制函数

```sql
if(rand()>rand(),'gt','lt')
ifnull('','hh') -- ''
ifnull(null,'hh') -- 'hh'
case round(rand()*10) when 1 then '一' when 2 then '二' else '三' end
case when rand()>rand() then 'gt' else 'lt' end -- if(rand()>rand(),'gt','lt')
```

## 约束

- 非空约束 not null
- 唯一约束 unique
- 主键约束 primary key
- 默认约束 default
- 检查约束 check (8.0.16版本之后)
- 外键约束 foreign key

```sql
create table tb_user(
  id int auto_increment primary key comment 'id',
  name varchar(10) not null unique comment '姓名',
  age int check (age>0&&age<=120) comment '年龄',
  status char(1) default '1' comment '状态',
  gender char(1) comment '性别'
);
```

### Foreign Key

foreign_key_test.sql

## 多表查询

## 事务

事务，一组操作的集合

```sql
select @@autocommit;
set @@autocommit=0;

start transaction;  begin;
update...;
update...;
commit;             rollback;
```

### ACID

原子性 Atomicity

一致性 Consistency

隔离性 Isolation

持久性 Durability

### 事务隔离级别

脏读 读取未提交

不可重复读

幻读

| 隔离级别 | 脏读 | 不可重复读 | 幻读
| -- | -- | -- | --
| Read Uncommitted | 会 | 会 | 会
| Read Committed | 𠀾 | 会 | 会
| Repeatable Read | 𠀾 | 𠀾 | 会
| Serializable | 𠀾 | 𠀾 | 𠀾

```sql
select @@TRANSACTION_ISOLATION;

set [ session | global ] transaction isolation level [ read uncommitted | read committed | repeatable read | serializable ]
```

## 存储引擎

存储引擎：存储数据、建立索引、更新与查询数据、基于表

```sql
create table ... (
  ...
) ENGINE=InnoDB;

show engines;
```
MySQL5.0默认建表：ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

## InnoDB

兼顾高可靠性和高性能的通用存储引擎，MySQL5.5之后默认存储引擎。

1. DML操作遵循ACID模型，支持事务；
2. 行级锁，提高并发访问性能；
3. 支持外键约束，保证数据的完整性和正确性。

表空间文件：data目录下xxx.ibd文件，存储表结构、数据、索引。

（frm早期的，sdi新版的）
```sql
-- variable value为on，则innodb引擎的每一张表，都对应一个idb文件
show variables like 'innodb_file_per_table';
```
cmd命令ibd2sdi：从ibd文件中提取sdi信息，json格式。

### 逻辑存储结构

1. 表空间：InnoDB逻辑存储结构中的最高层，包含多个segment段；
2. 段：表空间由各个段组成，数据段、索引段、回滚段等。InnoDB中对段的管理，由引擎自身完成。一个段中包含多个区。
3. 区：表空间的单元结构，每个区的大小为1M。默认情况下，页的大小为16K，一个区中有64个连续的页。
4. 页：组成区的最小单元，InnoDB存储引擎磁盘管理的最小单元。页的大小默认为16K。为保证页的连续性，InnoDB存储引擎每次从磁盘申请4-5个区。
5. 行：InnoDB存储引擎是面向行的，数据按行进行存放。每一行数据除了表中的字段，还有2个隐藏字段。

## MyISAM

MySQL早期默认存储引擎

1. 不支持事务，不支持外键；
2. 支持表级锁，不支持行级锁；
3. 访问速度快。

文件：

1. xxx.sdi：存储表结构信息；
2. xxx.myd：存储数据；
3. xxx.myi：存储索引。

## Memory

表数据存储在内存中，只能作为临时表或缓存使用。

1. 表数据存储在内存中；
2. 默认为hash索引。
   
xxx.sdi：存储表结构信息。

## 存储引擎的选择

## 索引

帮助MySQL高效获取数据的数据结构。

| 优势 | 劣势
| -- | --
| 提高数据检索的效率，降低数据库的IO成本 | 索引占用空间
| 通过索引列对数据进行排序，降低数据排序的成本，降低CPU的消耗 | 索引降低了表更新的速度。在进行INSERT、UPDATE、DELETE等操作时，效率降低

不同的存储引擎有不同的索引结构。
|索引结构|描述
|--|--
|B+树索引|最常见的索引结构，大部分存储引擎都支持B+树索引
|Hash索引|底层数据结构用哈希表实现，只有精确匹配索引列的查询才有效，不支持范围查询
|R-tree空间索引|主要用于地理空间数据类型，通常使用较少
|full-text全文索引|通过建立倒排索引，快速匹配文档

二叉树？B树？B+Tree？

B+树索引和Hash索引？

索引分类：主键索引、唯一索引、常规索引、全文索引、前缀索引、单列索引、联合索引。

根据索引的存储形式进行分类：聚焦索引、二级索引。

回表查询

[InnoDB主键索引的B+树的高度计算](https://blog.csdn.net/weixin_52690231/article/details/123814573)

## 创建索引

```sql
create [ unique | fulltext ] index index_name on table_name (
  index_col_name,...
);

show index from table_name;

drop index index_name on table_name;
```

## 索引测试

index_test.sql

## SQL执行频率

查看insert、update、select、delete的访问频次
session当前会话
global全局数据
```sql
show [ session | global ] status like 'Com_______';
```

## 慢查询日志

记录执行时间超过指定时间的SQL的执行日志。
慢查询时间long_query_time，单位秒，默认10秒。
慢查询日志默认关闭，通过MySQL变量slow_query_log查询。
```sql
show variables like 'slow_query_log';
```

开启慢查询日志，在MySQL的my.cnf中配置
slow_query_log=1
long_query_time=2
慢查询日志文件localhost-slow.log

## profile

在做SQL优化时，通过profile了解SQL执行时间的耗费情况。
通过have_profiling查看当前MySQL是否支持profile。
```sql
select @@have_profiling;

set profiling=1;

show profiles;
show profile for query query_id;
show profile cpu for query query_id;
```

## explain

explain或desc命令可以获取MySQL执行select语句的情况，包括在select执行过程中表如何连接、表连接顺序。

1. id
select查询的序列号。
id相同，执行顺序从上到下，id不同，值越大，越先执行。

2. select_type
select查询的类型。
simple，简单查询，没有使用表连接或子查询。
primary，主查询，外层的查询。
union，union中的第二个查询或后面的查询。
subquery，select、where中的子查询。

3. type
连接类型。
性能由好到差的连接类型：null system const eq_ref ref range index all。

4. possible_key
可能应用到的索引，一个或多个。

5. key
实际使用的索引，null表示没有使用索引。

6. key_len
索引中使用的字节数。
该值为索引字段最大可能长度，并非实际使用长度。
在不损失精确性的前提下，长度越短越好。

7. rows
MySQL认为必须要执行查询的行数。
在InnoDB中，该值是一个估计值。

8. filtered
返回结果的行数占需读取的行数的百分比。
越大性能越好。

## 最左前缀匹配法则

如果使用了联合索引，要遵循最左前缀匹配法则。
查询应该从联合索引的最左列开始，并且不跳过其中的某一列。
如果跳过了其中的某一列，索引部分失效，这一列后面的字段索引失效。

## 索引失效

index_test.sql

一张表, 有四个字段(id, username, password, status), 由于数据量大, 需要对
以下SQL语句进行优化, 该如何进行才是最优方案:
select id,username,password from tb_user where username =
'itcast';
答案: 针对于 username, password建立联合索引, sql为: create index
idx_user_name_pass on tb_user(username,password);
这样可以避免上述的SQL语句，在查询的过程中，出现回表查询。

## 插入数据优化

一次性插入多条数据
insert into tb_test value(1,'tom');
insert into tb_test value(2,'jerry');
......

批量插入
insert into tb_test values(1,'tom'),(2,'jerry');

事务插入
start transaction;
insert into tb_test values(1,'tom'),(2,'jerry');
insert into tb_test values(3,'tom'),(4,'jerry');
......
commit;

主键顺序插入（页分裂、页合并）

使用load指令

## 主键优化

## order by优化
sql_test.sql

## group by优化

## limit优化

## count优化

1. count(主键)
InnoDB 引擎会遍历整张表，把每一行的 主键id 值都取出来，返回给服务层。
服务层拿到主键后，直接按行进行累加(主键不可能为null)

2. count(字段)
没有not null约束：InnoDB引擎会遍历整张表把每一行的字段值都取出来，返回给服务层，服务层判断是否为null，不为null，计数累加。
有not null约束：InnoDB引擎会遍历整张表把每一行的字段值都取出来，返回给服务层，直接按行进行累加。

3. count(数字)
InnoDB引擎遍历整张表，但不取值。服务层对于返回的每一行，放一个数字“1”进去，直接按行进行累加。

4. count(*)
InnoDB引擎并不会把全部字段取出来，而是专门做了优化，不取值，服务层直接按行进行累加。

## update优化

## 索引设计原则
1. 针对于数据量较大，且查询比较频繁的表建立索引。

2. 针对于常作为查询条件（where）、排序（order by）、分组（group by）操作的字段建立索引。

3. 尽量选择区分度高的列作为索引，尽量建立唯一索引，区分度越高，使用索引的效率越高。

4. 如果是字符串类型的字段，字段的长度较长，可以针对于字段的特点，建立前缀索引。

5. 尽量使用联合索引，减少单列索引，查询时，联合索引很多时候可以覆盖索引，节省存储空间，避免回表，提高查询效率。

6. 要控制索引的数量，索引并不是多多益善，索引越多，维护索引结构的代价也就越大，会影响增删改的效率。

7. 如果索引列不能存储NULL值，请在创建表时使用NOT NULL约束它。当优化器知道每列是否包含NULL值时，它可以更好地确定哪个索引最有效地用于查询。

（主键）

8. 满足业务需求的情况下，尽量降低主键的长度。

9. 插入数据时，尽量选择顺序插入，选择使用AUTO_INCREMENT自增主键。

10. 尽量不要使用UUID做主键或者是其他自然主键，如身份证号。

11. 业务操作时，避免对主键的修改。

（order by）

12. 根据排序字段建立合适的索引，多字段排序时，也遵循最左前缀法则。

13. 尽量使用覆盖索引。

14. 多字段排序, 一个升序一个降序，此时需要注意联合索引在创建时的规则（ASC/DESC）。

15. 如果不可避免的出现filesort，大数据量排序时，可以适当增大排序缓冲区大小sort_buffer_size(默认256k)。

（group by）

16. 在分组操作时，可以通过索引来提高效率。

17. 分组操作时，索引的使用也是满足最左前缀法则的。

（limit）

18. 一般分页查询时，通过创建覆盖索引能够比较好地提高性能，可以通过覆盖索引加子查询形式进行优化

（count）

19. 按照效率排序的话，count(字段) < count(主键 id) < count(1) 约等于 count(*)， 所以尽量使用count(\*)。

（update）

20. InnoDB的行锁是针对索引加的锁，不是针对记录加的锁，并且该索引不能失效，否则会从行锁升级为表锁。

## 从这里开始不再另外保存sql文件

## 视图

创建视图
create [ or replace ] view 视图名 [ (列名) ] as select语句 [ with [ cascade | local ] check option ];

查看创建视图
show create view 视图名;

查询数据
select ... from 视图名 ...;

修改
alter view 视图名 [ (列名) ] as select语句 [ with [ cascade | local ] check option ];

删除
drop view [ if exists ] 视图名 [ ,视图名 ] ...;

示例
```sql
-- 需要stu学生表
-- 创建视图
create or replace view stu_v_1 as select id,name from stu where id <= 10;
-- 查询视图
show create view stu_v_1;
select * from stu_v_1;
select * from stu_v_1 where id < 3;
create or replace view stu_v_1 as select id,name,age from stu where id <= 10;
alter view stu_v_1 as select id,name from stu where id <= 10;
-- 删除视图
drop view if exists stu_v_1;


create or replace view stu_v_1 as select id,name from stu where id <= 10 with cascaded check option ;
select * from stu_v_1;
-- Field of view 'test.stu_v_1' underlying table doesn't have a default value
-- 因为stu表的age字段声明为not null，没有默认值，所以插入失败
-- 也就是说，向视图中插入，也会向原表中插入。
-- 视图只是一个sql逻辑
insert into stu_v_1 values(6,'Tom');
-- 如果可以正常插入，但是查询的时候也会看不到17的数据
-- 因为视图定义了id<=10
insert into stu_v_1 values(17,'Tom22');
```

检查选项

CASCADED级联
比如，v2视图是基于v1视图的，如果在v2视图创建的时候指定了检查选项为cascaded，但是v1视图创建时未指定检查选项。 则在执行检查时，不仅会检查v2，还会级联检查v2的关联视图v1。

LOCAL本地
比如，v2视图是基于v1视图的，如果在v2视图创建的时候指定了检查选项为local，但是v1视图创建时未指定检查选项。则在执行检查时，知会检查v2，不会检查v2的关联视图v1。

如果视图包含以下任何一项，则该视图不可更新：
A. 聚合函数或窗口函数（SUM()、 MIN()、 MAX()、 COUNT()等）
B. DISTINCT
C. GROUP BY
D. HAVING
E. UNION 或者 UNION ALL

## 视图的作用

1. 简单
视图不仅可以简化用户对数据的理解，也可以简化他们的操作。那些被经常使用的查询可以被定义为视
图，从而使得用户不必为以后的操作每次指定全部的条件。

2. 安全
数据库可以授权，但不能授权到数据库特定行和特定的列上。通过视图用户只能查询和修改他们所能见
到的数据

3. 数据独立
视图可帮助用户屏蔽真实表结构变化带来的影响。

```sql
-- 为了保证数据库表的安全性，开发人员在操作tb_user表时，
-- 只能看到的用户的基本字段，屏蔽手机号和邮箱两个字段。
create view tb_user_view as select id,name,profession,age,gender,status,createtime
from tb_user;
select * from tb_user_view;
-- 查询每个学生所选修的课程（三张表联查）
-- 这个功能在很多的业务中都有使用到，为了简化操作，定义一个视图。
create view tb_stu_course_view as select s.name student_name , s.no student_no ,
c.name course_name from student s, student_course sc , course c where s.id =
sc.studentid and sc.courseid = c.id;
select * from tb_stu_course_view;
```

## 存储过程

1. 封装，复用
-----------------------> 可以把某一业务SQL封装在存储过程中，需要用到的时候直接调用即可。
2. 可以接收参数，也可以返回数据
--------> 再存储过程中，可以传递参数，也可以接收返回值。
3. 减少网络交互，效率提升
-------------> 如果涉及到多条SQL，每执行一次都是一次网络传输。 而如果封装在存储过程中，我们只需要网络交互一次可能就可以了。

创建
create procedure 存储过程名称([ 参数列表 ])
begin
sql语句
end;

调用
call 存储过程名称([ 参数 ]);

查询指定数据库的存储过程及状态信息
SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA = '数据库名';
查询某个存储过程的定义
SHOW CREATE PROCEDURE 存储过程名称;

删除
drop procedure [ if exists ] 存储过程名称;

```sql
-- 存储过程
-- 创建
create procedure p1()
begin
select count(*) from stu;
end;
-- 调用
call p1();
-- 查看
select * from information_schema.ROUTINES where ROUTINE_SCHEMA = 'test';
show create procedure p1;
-- 删除
drop procedure if exists p1;
```

## 变量
系统变量、用户定义变量、局部变量

## 系统变量
全局变量global
会话变量session

查看所有系统变量
SHOW [ SESSION | GLOBAL ] VARIABLES;

可以通过LIKE模糊匹配方式查找变量
SHOW [ SESSION | GLOBAL ] VARIABLES LIKE '......';

查看指定变量的值
SELECT @@[SESSION. | GLOBAL.]系统变量名;

设置值
SET [ SESSION | GLOBAL ] 系统变量名 = 值;
SET @@[SESSION. | GLOBAL.]系统变量名 = 值;

如果没有指定SESSION/GLOBAL，默认是SESSION，会话变量。
全局变量针对于所有的会话。
会话变量针对于单个会话，在另外一个会话窗口就不生效了。
mysql服务重新启动之后，所设置的全局参数会失效，要想不失效，可以在 /etc/my.cnf 中配置。

## 用户定义变量

SET @变量名=表达式 [ ,@变量名=表达式] ...;
SET @变量名:=表达式 [ ,@变量名:=表达式] ...;
SELECT @变量名:=表达式 [ ,@变量名:=表达式] ...;
SELECT 字段名 INTO @变量名 FROM 表名;
SELECT @变量名;

```sql
-- 变量: 用户变量
-- 赋值
set @myname = 'hhh';
set @myage := 10;
set @mygender := '男',@myhobby := 'java';
select @mycolor := 'red';
select count(*) into @mycount from tb_user;
-- 使用
select @myname,@myage,@mygender,@myhobby;
select @mycolor , @mycount;
-- NULL
select @abc;
```

## 局部变量

DECLARE 变量名 变量类型 [ DEFAULT ... ];
SET 变量名=值;
SET 变量名:=值;
SELECT 字段名 INTO 变量名 FROM 表名 ...;

```sql
-- 变量: 局部变量
-- 声明 - declare
-- 赋值 -
create procedure p2()
begin
    declare stu_count int default 0;
    select count(*) into stu_count from student;
    select stu_count;
end;
call p2();
```

## if语句

IF 条件1 THEN
...
[ ELSEIF 条件2 THEN
... ] --可选
[ ELSE
... ] --可选
END IF;

```sql
create procedure p3()
begin
declare score int default 58;
declare result varchar(10);
if score >= 85 then
set result := '优秀';
elseif score >= 60 then
set result := '及格';
else
set result := '不及格';
end if;
select result;
end;
call p3();
```

## 参数

三种：in、out、inout

REATE PROCEDURE 存储过程名称 ([ IN/OUT/INOUT 参数名 参数类型 ])
BEGIN
SQL语句
END;

```sql
-- in/out/inout参数

-- 根据传入(in)参数score，判定当前分数对应的分数等级，并返回(out)。
-- score >= 85分，等级为优秀。
-- score >= 60分 且 score < 85分，等级为及格。
-- score < 60分，等级为不及格。
create procedure p4(in score int, out result varchar(10))
begin
    if score >= 85 then
        set result := '优秀';
    elseif score >= 60 then
        set result := '及格';
    else
        set result := '不及格';
    end if;
end;
call p4(18, @result);
select @result;

-- 将传入的 200分制的分数,进行换算,换算成百分制 , 然后返回分数 ---> inout
create procedure p5(inout score double)
begin
    set score := score * 0.5;
end;
set @score = 198;
call p5(@score);
select @score;
```

## case

CASE case_value
WHEN when_value1 THEN statement_list1
[ WHEN when_value2 THEN statement_list2 ] ...
[ ELSE statement_list ]
END CASE;

CASE
WHEN search_condition1 THEN statement_list1
[ WHEN search_condition2 THEN statement_list2 ] ...
[ ELSE statement_list ]
END CASE;

```sql
-- case
-- 根据传入的月份，判定月份所属的季节（要求采用case结构）。
-- 1-3月份，为第一季度
-- 4-6月份，为第二季度
-- 7-9月份，为第三季度
-- 10-12月份，为第四季度
create procedure p6(in month int)
begin
    declare result varchar(10);
    case
        when month >= 1 and month <= 3 then
            set result := '第一季度';
        when month >= 4 and month <= 6 then
            set result := '第二季度';
        when month >= 7 and month <= 9 then
            set result := '第三季度';
        when month >= 10 and month <= 12 then
            set result := '第四季度';
        else
            set result := '非法参数';
    end case ;
    select concat('您输入的月份为: ',month, ', 所属的季度为: ',result);
end;
call  p6(16);
```

## while

WHILE 条件 DO
SQL语句
END WHILE;

```sql
-- while   计算从1累加到n的值，n为传入的参数值。
-- A. 定义局部变量, 记录累加之后的值;
-- B. 每循环一次, 就会对n进行减1 , 如果n减到0, 则退出循环
create procedure p7(in n int)
begin
    declare total int default 0;

    while n>0 do
         set total := total + n;
         set n := n - 1;
    end while;

    select total;
end;
call p7(100);
```

## repeat

REPEAT
sql语句
UNTIL 条件
END REPEAT;

```sql
-- repeat   计算从1累加到n的值，n为传入的参数值。
-- A. 定义局部变量, 记录累加之后的值;
-- B. 每循环一次, 就会对n进行-1 , 如果n减到0, 则退出循环
create procedure p8(in n int)
begin
    declare total int default 0;
    repeat
        set total := total + n;
        set n := n - 1;
    until  n <= 0
    end repeat;

    select total;
end;
call p8(10);
call p8(100);
```

## loop

[begin_label:] LOOP
SQL语句
END LOOP [end_label];

退出指定标记的循环体
LEAVE label;
直接进入下一次循环
ITERATE label;

```sql
-- loop  计算从1累加到n的值，n为传入的参数值。
-- A. 定义局部变量, 记录累加之后的值;
-- B. 每循环一次, 就会对n进行-1 , 如果n减到0, 则退出循环 ----> leave xx
create procedure p9(in n int)
begin
    declare total int default 0;
    sum:loop
        if n<=0 then
            leave sum;
        end if;
        set total := total + n;
        set n := n - 1;
    end loop sum;
    select total;
end;
call p9(100);

-- loop  计算从1到n之间的偶数累加的值，n为传入的参数值。
-- A. 定义局部变量, 记录累加之后的值;
-- B. 每循环一次, 就会对n进行-1 , 如果n减到0, 则退出循环 ----> leave xx
-- C. 如果当次累加的数据是奇数, 则直接进入下一次循环. --------> iterate xx
create procedure p10(in n int)
begin
    declare total int default 0;
    sum:loop
        if n<=0 then
            leave sum;
        end if;
        if n%2 = 1 then
            set n := n - 1;
            iterate sum;
        end if;
        set total := total + n;
        set n := n - 1;
    end loop sum;
    select total;
end;
call p10(100);
```

## 游标
用来存储查询结果集的数据类型 , 在存储过程和函数中可以使用游标对结果集进行循环的处理。

声明
DECLARE 游标名称 CURSOR FOR 查询语句;

打开游标
OPEN 游标名称;

获取游标记录
FETCH 游标名称 INTO 变量 [ ,变量 ];

关闭游标
CLOSE 游标名称;

```sql
-- 游标
-- 根据传入的参数uage，来查询用户表 tb_user中，所有的用户年龄小于等于uage的用户姓名（name）和专业（profession），
-- 并将用户的姓名和专业插入到所创建的一张新表(id,name,profession)中。
-- 逻辑:
-- A. 声明游标, 存储查询结果集
-- B. 准备: 创建表结构
-- C. 开启游标
-- D. 获取游标中的记录
-- E. 插入数据到新表中
-- F. 关闭游标
create procedure p11(in uage int)
begin
    declare uname varchar(100);
    declare upro varchar(100);
    declare u_cursor cursor for select name,profession from tb_user where age <=uage;
    drop table if exists tb_user_pro;
    create table if not exists tb_user_pro(
        id int primary key auto_increment,
        name varchar(100),
        profession varchar(100)
    );
    open u_cursor;
    while true do
        fetch u_cursor into uname,upro;
        insert into tb_user_pro values (null, uname, upro);
    end while;
    close u_cursor;
end;
call p11(30);
-- 存储过程中的while循环没有退出标记
-- 因此程序并不完善，需要条件处理程序handler
```

## 条件处理程序handler

DECLARE handler_action HANDLER FOR condition_value [, condition_value] ... statement;

handler_action 的取值：
CONTINUE: 继续执行当前程序
EXIT: 终止执行当前程序

condition_value 的取值：
SQLSTATE sqlstate_value: 状态码，如 02000
SQLWARNING: 所有以01开头的SQLSTATE代码的简写
NOT FOUND: 所有以02开头的SQLSTATE代码的简写
SQLEXCEPTION: 所有没有被SQLWARNING 或 NOT FOUND捕获的SQLSTATE代码的简写

```sql
create procedure p11(in uage int)
begin
    declare uname varchar(100);
    declare upro varchar(100);
    declare u_cursor cursor for select name,profession from tb_user where age <= uage;
    -- 声明条件处理程序 ： 当SQL语句执行抛出的状态码为02000时，将关闭游标u_cursor，并退出
    declare exit handler for SQLSTATE '02000' close u_cursor;
    drop table if exists tb_user_pro;
    create table if not exists tb_user_pro(
        id int primary key auto_increment,
        name varchar(100),
        profession varchar(100)
    );
    open u_cursor;
    while true do
        fetch u_cursor into uname,upro;
        insert into tb_user_pro values (null, uname, upro);
    end while;
    close u_cursor;
end;
call p11(30);

create procedure p12(in uage int)
begin
    declare uname varchar(100);
    declare upro varchar(100);
    declare u_cursor cursor for select name,profession from tb_user where age <= uage;
    -- 声明条件处理程序 ： 当SQL语句执行抛出的状态码为02开头时，将关闭游标u_cursor，并退出
    declare exit handler for not found close u_cursor;
    drop table if exists tb_user_pro;
    create table if not exists tb_user_pro(
        id int primary key auto_increment,
        name varchar(100),
        profession varchar(100)
    );
    open u_cursor;
    while true do
        fetch u_cursor into uname,upro;
        insert into tb_user_pro values (null, uname, upro);
    end while;
    close u_cursor;
end;
call p12(30);
```

## 存储函数

存储函数是有返回值的存储过程，存储函数的参数只能是IN类型的。

CREATE FUNCTION 存储函数名称 ([ 参数列表 ])
RETURNS type [ characteristic ... ]
BEGIN
SQL语句
RETURN ...;
END;

characteristic说明：
DETERMINISTIC：相同的输入参数总是产生相同的结果
NO SQL：不包含SQL语句。
READS SQL DATA：包含读取数据的语句，但不包含写入数据的语句。

```sql
-- 存储函数
-- 从1到n的累加
create function fun1(n int)
returns int deterministic
begin
    declare total int default 0;
    while n>0 do
        set total := total + n;
        set n := n - 1;
    end while;
    return total;
end;
select fun1(50);
```

mysql8中binlog默认开启，要求在定义存储过程时，需要指定characteristic特性，否则报错

## 触发器

1. INSERT型触发器
NEW表示将要或者已经新增的数据
2. UPDATE型触发器
OLD表示修改之前的数据，NEW表示将要或已经修改后的数据
3. DELETE型触发器
OLD表示将要或者已经删除的数据

创建行级触发器
CREATE TRIGGER 触发器名称
BEFORE/AFTER INSERT/UPDATE/DELETE
ON 表名 FOR EACH ROW
BEGIN
语句;
END;

查看
SHOW TRIGGERS ;

删除，默认为当前数据库
DROP TRIGGER [schema_name.]触发器名称;

```sql
-- user_logs表保存tb_user的修改记录
-- 触发器
-- 需求: 通过触发器记录 user 表的数据变更日志(user_logs) , 包含增加, 修改 , 删除 ;
-- 插入数据触发器
create trigger tb_user_insert_trigger
    after insert on tb_user for each row
begin
    insert into user_logs(id, operation, operate_time, operate_id, operate_params) VALUES
    (null, 'insert', now(), new.id, concat('插入的数据内容为: id=',new.id,',name=',new.name, ', phone=', NEW.phone, ', email=', NEW.email, ', profession=', NEW.profession));
end;
-- 查看
show triggers ;
-- 插入数据到tb_user
insert into tb_user(id, name, phone, email, profession, age, gender, status, createtime) VALUES (26,'三皇子','18809091212','erhuangzi@163.com','软件工程',23,'1','1',now());
-- 查看日志
SELECT * FROM user_logs;

-- 修改数据触发器
create trigger tb_user_update_trigger
    after update on tb_user for each row
begin
    insert into user_logs(id, operation, operate_time, operate_id, operate_params) VALUES
    (null, 'update', now(), new.id,
        concat('更新之前的数据: id=',old.id,',name=',old.name, ', phone=', old.phone, ', email=', old.email, ', profession=', old.profession,
            ' | 更新之后的数据: id=',new.id,',name=',new.name, ', phone=', NEW.phone, ', email=', NEW.email, ', profession=', NEW.profession));
end;
show triggers ;
update tb_user set profession = '会计' where id = 23;
SELECT * FROM user_logs;
update tb_user set profession = '会计' where id <= 5;
SELECT * FROM user_logs;

-- 删除数据触发器
create trigger tb_user_delete_trigger
    after delete on tb_user for each row
begin
    insert into user_logs(id, operation, operate_time, operate_id, operate_params) VALUES
    (null, 'delete', now(), old.id,
        concat('删除之前的数据: id=',old.id,',name=',old.name, ', phone=', old.phone, ', email=', old.email, ', profession=', old.profession));
end;
show triggers ;
delete from tb_user where id = 26;
SELECT * FROM user_logs;

-- 删除
drop trigger tb_user_insert_trigger;
drop trigger tb_user_update_trigger;
drop trigger tb_user_delete_trigger;

-- 其他测试
insert into tb_user(id, name, phone, email, profession, age, gender, status, createtime)
VALUES (25,'二皇子','18809091212','erhuangzi@163.com','软件工程',23,'1','1',now());
update tb_user set age = 32 where id = 23;
delete from tb_user where id = 25;
```

## 锁

全局锁、表级锁、行级锁

## 全局锁

对整个数据库实例加锁，加锁后整个实例就处于只读状态，后续的DML的写语句，DDL语句，已经更新操作的事务提交语句都将被阻塞。

做全库的逻辑备份，对所有的表进行锁定，保证数据的完整性。

加全局锁
flush tables with read lock;
数据备份
mysqldump -uroot –p1234 db_test > db_test.sql
释放锁
unlock tables ;

如果在主库上备份，那么在备份期间都不能执行更新，业务基本上就得停摆。
如果在从库上备份，那么在备份期间从库不能执行主库同步过来的二进制日志（binlog），会导致主从延迟。

在InnoDB引擎中，我们可以在备份时加上参数--single-transaction参数来完成不加锁的一致性数据备份。
mysqldump --single-transaction -uroot –p123456 db_test > db_test.sql

## 表级锁

表锁、元数据锁、意向锁

## 表锁
表共享读锁
表独占写锁

加锁
lock tables 表名 read/write
释放锁
unlock tables或者客户端断开连接

读锁不会阻塞其他客户端的读，但是会阻塞写。写锁既会阻塞其他客户端的读，又会阻塞其他客户端的写。

## 元数据锁
meta data lock
MDL

MDL加锁，系统自动控制，无需显式使用，访问一张表时自动加上。
维护表元数据的数据一致性，在表上有活动事务的时候，不可以对元数据进行写入操作。
元数据，简单理解为一张表的表结构。
MySQL5.5引入MDL，当对一张表进行增删改查的时候，加MDL读锁(共享)；当对表结构进行变更操作的时候，加MDL写锁(排他)。

| sql操作 | 加锁类型 | |
|--|--|--
lock tables...read | SHARED READ ONLY
lock tables...write | SHARED NO READ WRITE
select、select...lock in share mode | SHARED READ | 与SHARED READ、SHARED WRITE兼容，与EXCLUSIVE互斥
insert、update、delete、select...for update | SHARED WRITE | 与SHARED READ、SHARED WRITE兼容，与EXCLUSIVE互斥
alter table... | EXCLUSIVE | 与其他的MDL都互斥

查看元数据加锁情况
select object_type,object_schema,object_name,lock_type,lock_duration
from performance_schema.metadata_locks;

## 意向锁

没有意向锁，客户端一对表加了行锁后，客户端二想给表加表锁。
首先客户端一，开启事务，执行DML操作，对涉及到的行加行锁。
客户端二，想对这张表加表锁时，遍历每一行数据，检查是否有对应的行锁，如果没有，则加表锁，效率较低。
有了意向锁之后，客户端一，在执行DML操作时，对涉及的行加行锁，同时对表加上意向锁。
其他客户端，在对这张表加表锁的时候，会根据该表上所加的意向锁来判定是否可以成功加表锁，就不用逐行判断行锁情况了。

意向共享锁(IS)
由语句select ... lock in share mode添加。
与表锁共享锁(read)兼容，与表锁排他锁(write)互斥。
意向排他锁(IX)
由insert、update、delete、select...for update添加。
与表锁共享锁(read)及排他锁(write)都互斥，意向锁之间不会互斥。

查看加锁情况
select object_schema,object_name,index_name,lock_type,lock_mode,lock_data
from performance_schema.data_locks;

## 行级锁

行锁（Record Lock）
锁定单个行记录的锁，防止其他事务对此行进行update和delete。在RC、RR隔离级别下都支持。

间隙锁（Gap Lock）
锁定索引记录间隙（不含该记录），确保索引记录间隙不变，防止其他事务在这个间隙进行insert，产生幻读。在RR隔离级别下都支持。

临键锁（Next-Key Lock）
行锁和间隙锁组合，同时锁住数据，并锁住数据前面的间隙Gap。在RR隔离级别下支持。

## 行锁

共享锁（S）
允许一个事务去读一行，阻止其他事务获得相同数据集的排它锁。

排他锁（X）
允许获取排他锁的事务更新数据，阻止其他事务获得相同数据集的共享锁和排他锁。

| | 请求锁类型 | S共享锁 | X排他锁
|--|--|--|--|
| 当前锁类型 | | |
| S共享锁 | | 兼容 | 冲突
| X排他锁 | | 冲突 | 冲突

| sql | 加锁类型 | |
|--|--|--
| insert... | 排他锁 | 自动加锁
| update... | 排他锁 | 自动加锁
| delete... | 排他锁 | 自动加锁
| select | 不加锁
| select...lock in share mode | 共享锁 | 手动在select语句后写lock in share mode加锁
| select...for update | 排他锁 | 手动在select语句后写for update加锁

默认情况下，InnoDB在REPEATABLE READ事务隔离级别运行，InnoDB使用next-key锁进行搜索和索引扫描，以防止幻读。
针对唯一索引进行检索时，对已存在的记录进行等值匹配时，将会自动优化为行锁。
InnoDB的行锁是针对于索引加的锁，不通过索引条件检索数据，那么InnoDB将对表中的所有记录加锁，此时就会升级为表锁。

查看加锁情况
select object_schema,object_name,index_name,lock_type,lock_mode,lock_data
from performance_schema.data_locks;

```sql
-- MySQL5好像没有data_locks表
-- 转换到MySQL8进行测试
-- 创建stu表进行测试
CREATE TABLE `stu` (
`id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` varchar(255) DEFAULT NULL,
`age` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4;
INSERT INTO `stu` VALUES (1, 'tom', 1);
INSERT INTO `stu` VALUES (3, 'cat', 3);
INSERT INTO `stu` VALUES (8, 'rose', 8);
INSERT INTO `stu` VALUES (11, 'jetty', 11);
INSERT INTO `stu` VALUES (19, 'lily', 19);
INSERT INTO `stu` VALUES (25, 'lucy', 25);
-- 在多个终端中测试，用数字区分
mysql1> begin;
mysql1> select * from stu where id=1;
-- 查询加锁情况
mysql1> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
-- 没有加锁
Empty set
-- 在查询的时候加共享锁
mysql1> select * from stu where id=1 lock in share mode;
mysql1> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
-- 加锁情况
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IS            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | S,REC_NOT_GAP | 1         |
+---------------+-------------+------------+-----------+---------------+-----------+
mysql2> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IS            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | S,REC_NOT_GAP | 1         |
+---------------+-------------+------------+-----------+---------------+-----------+
-- 提交之后锁释放
mysql1> commit;
mysql1> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
Empty set
mysql2> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
Empty set

----------------------------------------------------------------------------

-- 共享锁与共享锁之间互相兼容
mysql1> begin;
mysql1> select * from stu where id=1 lock in share mode;
mysql2> begin;
mysql2> select * from stu where id=1 lock in share mode;
mysql1> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IS            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | S,REC_NOT_GAP | 1         |
| test          | stu         | NULL       | TABLE     | IS            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | S,REC_NOT_GAP | 1         |
+---------------+-------------+------------+-----------+---------------+-----------+
mysql2> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IS            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | S,REC_NOT_GAP | 1         |
| test          | stu         | NULL       | TABLE     | IS            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | S,REC_NOT_GAP | 1         |
+---------------+-------------+------------+-----------+---------------+-----------+
-- 最后记得提交
mysql> commit;

----------------------------------------------------------------------------

-- 测试共享锁与排他锁
mysql1> begin;
mysql1> select * from stu where id=1 lock in share mode;
mysql2> begin;
mysql2> update stu set name='java' where id=3;
-- 因为终端1加共享锁的是数据1，所以终端2可以加数据3的排他锁
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IX            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 3         |
| test          | stu         | NULL       | TABLE     | IS            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | S,REC_NOT_GAP | 1         |
+---------------+-------------+------------+-----------+---------------+-----------+
-- 此时继续加数据1排他锁，阻塞，终端卡住没有响应
mysql2> update stu set name='java' where id=1;
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IX            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 3         |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 1         |
| test          | stu         | NULL       | TABLE     | IS            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | S,REC_NOT_GAP | 1         |
+---------------+-------------+------------+-----------+---------------+-----------+
-- 如果长时间没有提交终端1事务
-- 终端2等待超时
mysql2>
ERROR 1205 (HY000): Lock wait timeout exceeded; try restarting transaction
-- 最后提交
-- 数据1.name并没有改为'java'
mysql> commit;

----------------------------------------------------------------------------

-- 测试排他锁与排他锁
mysql1> begin;
mysql1> update stu set name='java' where id=1;
-- 终端1的排他锁
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IX            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 1         |
+---------------+-------------+------------+-----------+---------------+-----------+
mysql2> begin;
mysql2> update stu set name='java' where id=1;
-- 终端2阻塞，两个数据1的排他锁
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IX            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 1         |
| test          | stu         | NULL       | TABLE     | IX            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 1         |
+---------------+-------------+------------+-----------+---------------+-----------+
-- 终端1先提交，终端2解除阻塞
mysql1> commit;
-- 终端2提交
mysql2> commit;

----------------------------------------------------------------------------

-- 无索引行锁升级为表锁
-- 终端1根据name进行update
mysql1> begin;
mysql1> update stu set name='java' where name='tom';
-- 由于name没有索引，而行锁是对索引加锁，没有索引会升级为表锁
-- 因此都加上了锁
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+-----------+------------------------+
| object_schema | object_name | index_name | lock_type | lock_mode | lock_data              |
+---------------+-------------+------------+-----------+-----------+------------------------+
| test          | stu         | NULL       | TABLE     | IX        | NULL                   |
| test          | stu         | PRIMARY    | RECORD    | X         | supremum pseudo-record |
| test          | stu         | PRIMARY    | RECORD    | X         | 8                      |
| test          | stu         | PRIMARY    | RECORD    | X         | 11                     |
| test          | stu         | PRIMARY    | RECORD    | X         | 19                     |
| test          | stu         | PRIMARY    | RECORD    | X         | 25                     |
| test          | stu         | PRIMARY    | RECORD    | X         | 1                      |
| test          | stu         | PRIMARY    | RECORD    | X         | 3                      |
+---------------+-------------+------------+-----------+-----------+------------------------+
-- 此时终端2阻塞
-- 经测试，此时select * from stu;可以，select * from stu lock in share mode;阻塞
-- 因此，验证了，当前锁是排他锁，不可获取共享锁。
-- 而且select * from stu lock in share mode;会对所有数据加共享锁。
mysql2> begin;
mysql2> update set name='java' where id=3;
-- 只能用终端1查询加锁情况，多了数据3的排他锁
mysql1> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+------------------------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data              |
+---------------+-------------+------------+-----------+---------------+------------------------+
| test          | stu         | NULL       | TABLE     | IX            | NULL                   |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 3                      |
| test          | stu         | NULL       | TABLE     | IX            | NULL                   |
| test          | stu         | PRIMARY    | RECORD    | X             | supremum pseudo-record |
| test          | stu         | PRIMARY    | RECORD    | X             | 8                      |
| test          | stu         | PRIMARY    | RECORD    | X             | 11                     |
| test          | stu         | PRIMARY    | RECORD    | X             | 19                     |
| test          | stu         | PRIMARY    | RECORD    | X             | 25                     |
| test          | stu         | PRIMARY    | RECORD    | X             | 1                      |
| test          | stu         | PRIMARY    | RECORD    | X             | 3                      |
+---------------+-------------+------------+-----------+---------------+------------------------+
-- 终端1提交后，终端2可以获取到锁
mysql1> commit;
-- 现在只剩下终端2加的数据3的排他锁
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IX            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 3         |
+---------------+-------------+------------+-----------+---------------+-----------+
-- 最后终端2提交
mysql2> commit;

----------------------------------------------------------------------------

-- 为name创建索引
create index idx_stu_name on stu(name);
-- 终端1根据name更新
mysql1> begin;
mysql1> update stu set name='java' where name='tom';
-- name有索引后，不再加表锁
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+--------------+-----------+---------------+------------------------+
| object_schema | object_name | index_name   | lock_type | lock_mode     | lock_data              |
+---------------+-------------+--------------+-----------+---------------+------------------------+
| test          | stu         | NULL         | TABLE     | IX            | NULL                   |
| test          | stu         | idx_stu_name | RECORD    | X             | supremum pseudo-record |
| test          | stu         | idx_stu_name | RECORD    | X             | 'tom', 3               |
| test          | stu         | PRIMARY      | RECORD    | X,REC_NOT_GAP | 3                      |
+---------------+-------------+--------------+-----------+---------------+------------------------+
-- 终端2更新数据1，不再阻塞
mysql2> begin;
mysql> update stu set name='java' where id=1;
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+--------------+-----------+---------------+------------------------+
| object_schema | object_name | index_name   | lock_type | lock_mode     | lock_data              |
+---------------+-------------+--------------+-----------+---------------+------------------------+
| test          | stu         | NULL         | TABLE     | IX            | NULL                   |
| test          | stu         | PRIMARY      | RECORD    | X,REC_NOT_GAP | 1                      |
| test          | stu         | NULL         | TABLE     | IX            | NULL                   |
| test          | stu         | idx_stu_name | RECORD    | X             | supremum pseudo-record |
| test          | stu         | idx_stu_name | RECORD    | X             | 'tom', 3               |
| test          | stu         | PRIMARY      | RECORD    | X,REC_NOT_GAP | 3                      |
+---------------+-------------+--------------+-----------+---------------+------------------------+
-- 提交
mysql> commit;
```

## 间隙锁临键锁

默认情况下，InnoDB在REPEATABLE READ事务隔离级别运行，InnoDB使用next-key锁进行搜索和索引扫描，以防止幻读。

索引上的等值查询(唯一索引)，给不存在的记录加锁时, 优化为间隙锁。
索引上的等值查询(非唯一普通索引)，向右遍历时最后一个值不满足查询需求时，next-key lock退化为间隙锁。
索引上的范围查询(唯一索引)会访问到不满足条件的第一个值为止。

间隙锁是为了防止其他事务插入间隙。间隙锁可以共存，一个事务采用的间隙锁不会阻止另一个事务在同一间隙上采用间隙锁。

```sql
-- 唯一索引的等值查询
-- 数据5不存在，加间隙锁，锁数据8
-- 现有数据3到8
mysql1> begin;
mysql1> update stu set age=1 where id=5;
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+-----------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode | lock_data |
+---------------+-------------+------------+-----------+-----------+-----------+
| test          | stu         | NULL       | TABLE     | IX        | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,GAP     | 8         |
+---------------+-------------+------------+-----------+-----------+-----------+

------------------------------------------------------------------------------------------------

-- 间隙锁可以并存
-- 现有数据3、8
mysql2> update stu set name='john' where id=7;
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+-----------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode | lock_data |
+---------------+-------------+------------+-----------+-----------+-----------+
| test          | stu         | NULL       | TABLE     | IX        | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,GAP     | 8         |
| test          | stu         | NULL       | TABLE     | IX        | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,GAP     | 8         |
+---------------+-------------+------------+-----------+-----------+-----------+
mysql2> update stu set name='john' where id=8;
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IX            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,GAP         | 8         |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 8         |
| test          | stu         | NULL       | TABLE     | IX            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,GAP         | 8         |
+---------------+-------------+------------+-----------+---------------+-----------+
mysql2> update stu set name='john' where id=3;
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+-----------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data |
+---------------+-------------+------------+-----------+---------------+-----------+
| test          | stu         | NULL       | TABLE     | IX            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,GAP         | 8         |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 8         |
| test          | stu         | PRIMARY    | RECORD    | X,REC_NOT_GAP | 3         |
| test          | stu         | NULL       | TABLE     | IX            | NULL      |
| test          | stu         | PRIMARY    | RECORD    | X,GAP         | 8         |
+---------------+-------------+------------+-----------+---------------+-----------+

-------------------------------------------------------------------------------------------

-- 有间隙锁，不能向间隙中插入数据
-- 现有数据3、8
mysql2> insert into stu values(7,'john',7);
^C -- query aborted
ERROR 1317 (70100): Query execution was interrupted
mysql2> insert into stu values(5,'john',5);
^C -- query aborted
ERROR 1317 (70100): Query execution was interrupted
mysql2> insert into stu values(3,'john',3);
ERROR 1062 (23000): Duplicate entry '3' for key 'stu.PRIMARY'
-- 间隙外可以insert
mysql2> insert into stu values(2,'john',2);
Query OK, 1 row affected (0.00 sec)
-- 提交
mysql> commit;
```

在普通索引的等值查询中，数据是可以重复的。InnoDB的B+树索引，叶子节点是有序的双向链表。
假如，我们要根据这个二级索引查询值为18的数据，并加上共享锁。
因为是非唯一索引，这个结构中可能有多个18的存在，所以，在加锁时会继续往后找，找到一个不满足条件的值29。此时会对18加临键锁，并对29之前的间隙加锁。
```sql
-- 普通索引的等值查询
-- 用age做索引测试
mysql> create index idx_stu_age on stu(age);
mysql> begin;
-- 根据age查询
-- 数据中有3
mysql> select * from stu where age=3 lock in share mode;
-- 3加临键锁，8之前加间隙锁
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+-------------+-----------+---------------+-----------+
| object_schema | object_name | index_name  | lock_type | lock_mode     | lock_data |
+---------------+-------------+-------------+-----------+---------------+-----------+
| test          | stu         | NULL        | TABLE     | IS            | NULL      |
| test          | stu         | idx_stu_age | RECORD    | S             | 3, 3      |
| test          | stu         | PRIMARY     | RECORD    | S,REC_NOT_GAP | 3         |
| test          | stu         | idx_stu_age | RECORD    | S,GAP         | 8, 8      |
+---------------+-------------+-------------+-----------+---------------+-----------+
```

唯一索引的范围查询，访问到不满足条件的第一个值为止
```sql
mysql> begin;
mysql> select * from stu where id>=19 lock in share mode;
mysql> select object_schema,object_name,index_name,lock_type,lock_mode,lock_data from performance_schema.data_locks;
+---------------+-------------+------------+-----------+---------------+------------------------+
| object_schema | object_name | index_name | lock_type | lock_mode     | lock_data              |
+---------------+-------------+------------+-----------+---------------+------------------------+
| test          | stu         | NULL       | TABLE     | IS            | NULL                   |
| test          | stu         | PRIMARY    | RECORD    | S,REC_NOT_GAP | 19                     |
| test          | stu         | PRIMARY    | RECORD    | S             | supremum pseudo-record |
| test          | stu         | PRIMARY    | RECORD    | S             | 25                     |
+---------------+-------------+------------+-----------+---------------+------------------------+
mysql> commit;
-- 查询id>=19，添加共享锁。
-- 现有的数据可以分为三部分
-- [19]
-- (19,25]
-- (25,+∞]
-- 19加行锁，25加临键锁（包含25及25之前的间隙），正无穷加临键锁(正无穷及之前的间隙)。
```

## InnoDB

## InnoDB逻辑存储结构

1. 表空间
InnoDB存储引擎逻辑结构的最高层
如果用户启用了参数innodb_file_per_table(在8.0版本中默认开启)，则每张表都会有一个表空间（xxx.ibd）
一个mysql实例可以对应多个表空间，用于存储记录、索引等数据。

2. 段
分为数据段（Leaf node segment）、索引段（Non-leaf node segment）、回滚段（Rollback segment）
InnoDB是索引组织表，数据段就是B+树的叶子节点， 索引段即为B+树的非叶子节点。段用来管理多个Extent（区）。

3. 区
表空间的单元结构，每个区的大小为1M。
默认情况下，InnoDB存储引擎页大小为16K，即一个区中一共有64个连续的页。

4. 页
InnoDB存储引擎磁盘管理的最小单元，每个页的大小默认为16KB。为了保证页的连续性，InnoDB存储引擎每次从磁盘申请4-5个区。

5. 行
InnoDB存储引擎数据是按行进行存放的。
在行中，默认有两个隐藏字段
Trx_id
每次对某条记录进行改动时，都会把对应的事务id赋值给trx_id隐藏列。
Roll_pointer
每次对某条引记录进行改动时，都会把旧的版本写入到undo日志中，然后这个隐藏列就相当于一个指针，可以通过它来找到该记录修改前的信息。

## InnoDB架构
内存结构、磁盘结构

## InnoDB内存结构
Buffer Pool、Change Buffer、Adaptive Hash Index、Log Buffer

## buffer pool

InnoDB存储引擎基于磁盘文件存储，访问物理硬盘和在内存中进行访问，速度相差很大，为了尽可能弥补这两者之间的I/O效率的差值，就需要把经常使用的数据加载到缓冲池中，避免每次访问都进行磁盘I/O。
在InnoDB的缓冲池中不仅缓存了索引页和数据页，还包含了undo页、插入缓存、自适应哈希索引以及InnoDB的锁信息等等。
缓冲池Buffer Pool，是主内存中的一个区域，里面可以缓存磁盘上经常操作的真实数据，在执行增删改查操作时，先操作缓冲池中的数据（若缓冲池没有数据，则从磁盘加载并缓存），然后再以一定频率刷新到磁盘，从而减少磁盘IO，加快处理速度。

缓冲池以Page页为单位，底层采用链表数据结构管理Page。
根据状态，将Page分为三种类型：
- free page：空闲page，未被使用。
- clean page：被使用page，数据没有被修改过。
- dirty page：脏页，被使用page，数据被修改过，也中数据与磁盘的数据产生了不一致。

在专用服务器上，通常将多达80％的物理内存分配给缓冲池
show variables like 'innodb_buffer_pool_size';

## change buffer

Change Buffer，更改缓冲区（针对于非唯一二级索引页）
在执行DML语句时，如果这些数据Page没有在Buffer Pool中，不会直接操作磁盘，而会将数据变更存在更改缓冲区 Change Buffer中
在未来数据被读取时，再将数据合并恢复到Buffer Pool中，再将合并后的数据刷新到磁盘中。

与聚集索引不同，二级索引通常是非唯一的，并且以相对随机的顺序插入二级索引。
同样，删除和更新可能会影响索引树中不相邻的二级索引页，如果每一次都操作磁盘，会造成大量的磁盘IO。
有了ChangeBuffer之后，我们可以在缓冲池中进行合并处理，减少磁盘IO。

## adative hash index
自适应hash索引，用于优化对Buffer Pool数据的查询。
MySQL的innoDB引擎中虽然没有直接支持hash索引，但是给我们提供了一个功能就是这个自适应hash索引。
hash索引在进行等值匹配时，一般性能是要高于B+树的，因为hash索引一般只需要一次IO即可，而B+树，可能需要几次匹配，所以hash索引的效率要高，但是hash索引又不适合做范围查询、模糊匹配等。
InnoDB存储引擎会监控对表上各索引页的查询，如果观察到在特定的条件下hash索引可以提升速度，则建立hash索引，称之为自适应hash索引。
自适应哈希索引，无需人工干预，是系统根据情况自动完成。

## log buffer
Log Buffer日志缓冲区，用来保存要写入到磁盘中的log日志数据（redo log 、undo log），默认大小为 16MB，日志缓冲区的日志会定期刷新到磁盘中。
如果需要更新、插入或删除许多行的事务，增加日志缓冲区的大小可以节省磁盘I/O。

innodb_log_buffer_size
缓冲区大小
innodb_flush_log_at_trx_commit
日志刷新到磁盘时机，取值主要包含以下三个：
- 1，日志在每次事务提交时写入并刷新到磁盘，默认值。
- 0，每秒将日志写入并刷新到磁盘一次。
- 2，日志在每次事务提交后写入，并每秒刷新到磁盘一次

## InnoDB磁盘结构

## system tablespace
系统表空间是更改缓冲区的存储区域。
如果表是在系统表空间而不是每个表文件或通用表空间中创建的，它也可能包含表和索引数据。
(在MySQL5.x版本中还包含InnoDB数据字典、undolog等)

innodb_data_file_path
系统表空间，默认的文件名叫ibdata1。

## file-per-table tablespaces
如果开启了innodb_file_per_table开关，则每个表的文件表空间包含单个InnoDB表的数据和索引，并存储在文件系统上的单个数据文件中。

innodb_file_per_table
默认开启
每创建一个表，都会产生一个表空间文件

## general tablespaces

通用表空间，需要通过CREATE TABLESPACE语法创建通用表空间，在创建表时，可以指定该表空间。

创建通用表空间
CREATE TABLESPACE 表空间名 ADD DATAFILE '文件名' ENGINE=引擎名;
创建表时指定表空间
CREATE TABLE ... TABLESPACE 表空间名;

## undo tablespaces
撤销表空间，MySQL实例在初始化时会自动创建两个默认的undo表空间（初始大小16M），用于存储undo log日志。

## temporary tablespaces
InnoDB使用会话临时表空间和全局临时表空间。存储用户创建的临时表等数据。

## doublewrite buffer files
双写缓冲区，innoDB引擎将数据页从Buffer Pool刷新到磁盘前，先将数据页写入双写缓冲区文件中，便于系统异常时恢复数据。
两个文件
#ib_16384_0.dblwr
#ib_16384_1.dblwr

## redo log
重做日志，是用来实现事务的持久性。
由两部分组成：重做日志缓冲（redo log buffer）以及重做日志文件（redo log）,前者是在内存中，后者在磁盘中。
当事务提交之后会把所有修改信息都会存到该日志中，用于在刷新脏页到磁盘时，发生错误时，进行数据恢复使用。
以循环方式写入重做日志文件，涉及两个文件：
ib_logfile0
ib_logfile1

## InnoDB后台线程
Master Thread、IO Thread、Purge Thread、Page Cleaner Thread

## Master Thread
核心后台线程，负责调度其他线程，还负责将缓冲池中的数据异步刷新到磁盘中, 保持数据的一致性，还包括脏页的刷新、合并插入缓存、undo页的回收。

## IO Thread
在InnoDB存储引擎中大量使用了AIO来处理IO请求, 这样可以极大地提高数据库的性能，而IO Thread主要负责这些IO请求的回调。

线程类型 | 默认个数 | |
--|--|--
read thread | 4 | 负责读操作
write thread | 4 | 负责写操作
log thread | 1 | 负责将日志缓冲区刷新到磁盘
insert buffer thread | 1 | 负责将写缓冲区内容刷新到磁盘

查看InnoDB的状态信息，包含IO Thread信息。
show engine innodb status \G;

## Purge Thread
主要用于回收事务已经提交了的undo log，在事务提交之后，undo log可能不用了，就用它来回收。

## Page Cleaner Thread
协助Master Thread刷新脏页到磁盘的线程，它可以减轻Master Thread的工作压力，减少阻塞。

## 事务ACID
1. 原子性（Atomicity）：事务是不可分割的最小操作单元，要么全部成功，要么全部失败。
2. 一致性（Consistency）：事务完成时，必须使所有的数据都保持一致状态。
3. 隔离性（Isolation）：数据库系统提供的隔离机制，保证事务在不受外部并发操作影响的独立环境下运行。
4. 持久性（Durability）：事务一旦提交或回滚，它对数据库中的数据的改变就是永久的。


## 事务
实际上，研究事务的原理，就是研究MySQL的InnoDB引擎是如何保证事务的ACID特性的。
对于这四大特性，实际上分为两个部分。 其中的原子性、一致性、持久化，由InnoDB中的两份日志来保证的，一份是redo log日志，一份是undo log日志。
而持久性是通过数据库的锁，加上MVCC来保证的。

## redo log
重做日志，记录的是事务提交时数据页的物理修改，是用来实现事务的持久性。

由两部分组成：重做日志缓冲（redo log buffer）和重做日志文件（redo log file）,前者是在内存中，后者在磁盘中。
当事务提交之后会把所有修改信息都存到该日志文件中, 用于在刷新脏页到磁盘,发生错误时, 进行数据恢复使用。

在InnoDB引擎中的内存结构中，主要的内存区域就是缓冲池，在缓冲池中缓存了很多的数据页。 
当我们在一个事务中，执行多个增删改的操作时，InnoDB引擎会先操作缓冲池中的数据，如果缓冲区没有对应的数据，会通过后台线程将磁盘中的数据加载出来，存放在缓冲区中，然后将缓冲池中的数据修改，修改后的数据页我们称为脏页。 
而脏页则会在一定的时机，通过后台线程刷新到磁盘中，从而保证缓冲区与磁盘的数据一致。 
而缓冲区的脏页数据并不是实时刷新的，而是一段时间之后将缓冲区的数据刷新到磁盘中，假如刷新到磁盘的过程出错了，而提示给用户事务提交成功，而数据却没有持久化下来，这就出现问题了，没有保证事务的持久性。

有了redolog之后，当对缓冲区的数据进行增删改之后，会首先将操作的数据页的变化，记录在redo log buffer中。
在事务提交时，会将redo log buffer中的数据刷新到redo log磁盘文件中。
过一段时间之后，如果刷新缓冲区的脏页到磁盘时，发生错误，此时就可以借助于redo log进行数据恢复，这样就保证了事务的持久性。
而如果脏页成功刷新到磁盘或者涉及到的数据已经落盘，此时redolog就没有作用了，就可以删除了，所以存在的两个redolog文件是循环写的。

在业务操作中，我们操作数据一般都是随机读写磁盘的，而不是顺序读写磁盘。
而redo log在往磁盘文件中写入数据，由于是日志文件，所以都是顺序写的。顺序写的效率，要远大于随机写。
这种先写日志的方式，称之为WAL（Write-Ahead Logging）。

## undo log
回滚日志，用于记录数据被修改前的信息, 作用包含两个: 提供回滚(保证事务的原子性)和MVCC(多版本并发控制) 。

undo log和redo log记录物理日志不一样，它是逻辑日志。
可以认为当delete一条记录时，undo log中会记录一条对应的insert记录，反之亦然，当update一条记录时，它记录一条对应相反的update记录。
当执行rollback时，就可以从undo log中的逻辑记录读取到相应的内容并进行回滚。

Undo log销毁
undo log在事务执行时产生，事务提交时，并不会立即删除undo log，因为这些日志可能还用于MVCC。

Undo log存储
undo log采用段的方式进行管理和记录，存放在前面介绍的rollback segment回滚段中，内部包含1024个undo log segment。

## MVCC

## 当前读

读取记录的最新版本，读取时还要保证其他并发事务不能修改当前记录，会对读取的记录进行加锁。
如：select...lock in share mode(共享锁)，select...for update、update、insert、delete(排他锁)都是一种当前读。

测试
```sql
-- 虽然MySQL5找不到data_locks表
-- 但是也可以测试锁
-- 创建stu表进行测试
CREATE TABLE `stu` (
`id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` varchar(255) DEFAULT NULL,
`age` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4;
INSERT INTO `stu` VALUES (1, 'tom', 1);
INSERT INTO `stu` VALUES (3, 'cat', 3);
INSERT INTO `stu` VALUES (8, 'rose', 8);
INSERT INTO `stu` VALUES (11, 'jetty', 11);
INSERT INTO `stu` VALUES (19, 'lily', 19);
INSERT INTO `stu` VALUES (25, 'lucy', 25);

-- 两个终端
mysql1> begin;
mysql1> select * from stu;
-- 原数据
+----+-------+-----+
| id | name  | age |
+----+-------+-----+
|  1 | tom   |   1 |
|  3 | cat   |   3 |
|  8 | rose  |   8 |
| 11 | jetty |  11 |
| 19 | lily  |  19 |
| 25 | lucy  |  25 |
+----+-------+-----+
mysql2> begin;
-- 终端2更新数据1
mysql2> update stu set name='java' where id=1;
-- 终端2未提交，终端1仍然查询到原数据
mysql1> select * from stu;
+----+-------+-----+
| id | name  | age |
+----+-------+-----+
|  1 | tom   |   1 |
|  3 | cat   |   3 |
|  8 | rose  |   8 |
| 11 | jetty |  11 |
| 19 | lily  |  19 |
| 25 | lucy  |  25 |
+----+-------+-----+
-- 采用当前读的操作
-- 终端1阻塞
mysql1> select * from stu lock in share mode;
-- 终端2提交
mysql2> commit;
-- 终端1成功读取最新数据
+----+-------+-----+
| id | name  | age |
+----+-------+-----+
|  1 | java  |   1 |
|  3 | cat   |   3 |
|  8 | rose  |   8 |
| 11 | jetty |  11 |
| 19 | lily  |  19 |
| 25 | lucy  |  25 |
+----+-------+-----+
mysql1> commit;
-- 即使是在默认的RR隔离级别下，事务A中依然可以读取到事务B最新提交的内容，因为在查询语句后面加上了lock in share mode共享锁，此时是当前读操作。
-- 当然，加排他锁的时候，也是当前读操作。
```

## 快照读

简单的select（不加锁）就是快照读，快照读，读取的是记录数据的可见版本，有可能是历史数据，不加锁，是非阻塞读。
- Read Committed：每次select，都生成一个快照读。
- Repeatable Read：开启事务后第一个select语句才是快照读的地方。
- Serializable：快照读会退化为当前读。

测试
```sql
-- 同样用stu表进行测试
-- 由于只针对数据1，所以只展示数据1
mysql1> 
mysql2> 
mysql1> begin;
-- 一开始数据1.name为'java'
mysql1> select * from stu;
1 java 1
mysql2> begin;
mysql2> update stu set name='tom' where id=1;
mysql2> commit;
-- 这是快照读，读取到了第一次不加锁select的快照版本
-- 如果这是第一次不加锁select，那么快照版本就是"1 tom 1"，是终端2已经提交的
mysql1> select * from stu;
1 java 1
-- 加锁select，是当前读
mysql1> select * from stu lock in share mode;
1 tom 1
-- 不加锁select，仍然是快照读
mysql1> select * from stu;
1 java 1
mysql1> commit;
-- 即使事务B提交了数据,事务A中也查询不到。 原因就是因为普通的select是快照读
-- 而在当前默认的RR隔离级别下，开启事务后第一个select语句才是快照读的地方，后面执行相同的select语句都是从快照中获取数据，可能不是当前的最新数据，这样也就保证了可重复读。
```

## MVCC

全称Multi-Version Concurrency Control，多版本并发控制。
指维护一个数据的多个版本，使得读写操作没有冲突，快照读为MySQL实现MVCC提供了一个非阻塞读功能。
MVCC的具体实现，还需要依赖于数据库记录中的三个隐藏字段、undo log日志和readView。

## 隐藏字段

1. DB_TRX_ID
最近修改事务ID，记录插入这条记录或最后一次修改该记录的事务ID。
2. DB_ROLL_PTR
回滚指针，指向这条记录的上一个版本，用于配合undo log，指向上一个版本。
3. DB_ROW_ID
隐藏主键，如果表结构没有指定主键，将会生成该隐藏字段。

## undo log

回滚日志，在insert、update、delete的时候产生的便于数据回滚的日志。
当insert的时候，产生的undo log日志只在回滚时需要，在事务提交后，可被立即删除。
而update、delete的时候，产生的undo log日志不仅在回滚时需要，在快照读时也需要，不会立即被删除。

## 版本链

## readview

ReadView（读视图）是快照读SQL执行时MVCC提取数据的依据，记录并维护系统当前活跃的事务（未提交的）id。

字段 | |
--|--|--
m_ids | 当前活跃的事务ID集合
min_trx_id | 最小活跃事务ID
max_trx_id 预分配事务ID，当前最大事务ID+1（因为事务ID是自增的）
creator_trx_id ReadView创建者的事务ID

在readview中就规定了版本链数据的访问规则
trx_id代表当前undolog版本链对应事务ID。

条件 | 是否可以访问 | |
--|--|--
trx_id == creator_trx_id | 可以访问该版本 | 成立，说明数据是当前这个事务更改的。
trx_id < min_trx_id | 可以访问该版本 | 成立，说明数据已经提交了。
trx_id > max_trx_id | 不可以访问该版本 | 成立，说明该事务是在ReadView生成后才开启。
min_trx_id <= trx_id <= max_trx_id | 如果trx_id不在m_ids中，是可以访问该版本的 | 成立，说明数据已经提交。

不同的隔离级别，生成ReadView的时机不同：
- READ COMMITTED
在事务中每一次执行快照读时生成ReadView。
- REPEATABLE READ
仅在事务中第一次执行快照读时生成ReadView，后续复用该ReadView。

## RC、RR隔离级别下read view匹配过程

## MySQL系统数据库
1. mysql
存储MySQL服务器正常运行所需要的各种信息（时区、主从、用户、权限等）
2. information_schema
提供了访问数据库元数据的各种表和视图，包含数据库、表、字段类型及访问权限等
3. performance_schema
为MySQL服务器运行时状态提供了一个底层监控功能，主要用于收集数据库服务器性能参数
4. sys
包含了一系列方便DBA和开发人员利用performance_schema性能数据库进行性能调优和诊断的视图

## mysql客户端
mysql命令
- -u, --user=name 指定用户名
- -p, --password[=name] 指定密码
- -h, --host=name 指定服务器IP或域名
- -P, --port=port 指定连接端口
- -e, --execute=name 执行SQL语句并退出
-e选项可以在Mysql客户端执行SQL语句，而不用连接到MySQL数据库再执行
```shell
mysql -uroot –p123456 db01 -e "select * from stu";
```

## mysqladmin
执行管理操作的客户端程序。可以用它来检查服务器的配置和当前状态、创建并删除数据库等。
- -u, --user=name 指定用户名
- -p, --password[=name] 指定密码
- -h, --host=name 指定服务器IP或域名
- -P, --port=port 指定连接端口
```shell
mysqladmin -uroot –p1234 drop 'test01';
mysqladmin -uroot –p1234 version;
```

## mysqlbinlog
由于服务器生成的二进制日志文件以二进制格式保存，所以如果想要检查这些文本的文本格式，就会使用到mysqlbinlog日志管理工具。
- -d, --database=name 指定数据库名称，只列出指定的数据库相关操作。
- -o, --offset=# 忽略掉日志中的前n行命令。
- -r,--result-file=name 将输出的文本格式日志输出到指定文件。
- -s, --short-form 显示简单格式， 省略掉一些信息。
- --start-datatime=date1 --stop-datetime=date2 指定日期间隔内的所有日志。
- --start-position=pos1 --stop-position=pos2 指定位置间隔内的所有日志。
```shell
# 查看binlog.000008这个二进制文件中的数据信息
mysqlbinlog binlog.000008
mysqlbinlog -s binlog.000008
```

## mysqlshow
客户端对象查找工具，用来很快地查找存在哪些数据库、数据库中的表、表中的列或者索引。
- --count 显示数据库及表的统计信息（数据库，表均可以不指定）
- -i 显示指定数据库或者指定表的状态信息
```shell
# 查询test库中每个表中的字段数量，及行数
mysqlshow -uroot -p2143 test --count
# 查询test库中book表的详细情况
mysqlshow -uroot -p2143 test book --count
```

## mysqldump
用来备份数据库或在不同数据库之间进行数据迁移。备份内容包含创建表，及插入表的SQL语句。
连接选项
- -u, --user=name 指定用户名
- -p, --password[=name] 指定密码
- -h, --host=name 指定服务器ip或域名
- -P, --port=# 指定连接端口
输出选项
- --add-drop-database 在每个数据库创建语句前加上 drop database 语句
- --add-drop-table 在每个表创建语句前加上 drop table 语句 , 默认开启 ; 不开启 (--skip-add-drop-table)
- -n, --no-create-db 不包含数据库的创建语句
- -t, --no-create-info 不包含数据表的创建语句
- -d --no-data 不包含数据
- -T, --tab=name 自动生成两个文件：一个.sql文件，创建表结构的语句；一个.txt文件，数据文件
```shell
# 备份db01数据库
# 备份出来的数据包含：删除表的语句、创建表的语句、数据插入语句
mysqldump -uroot -p1234 db01 > db01.sql

##############################################################################

# 备份db01数据库中的表数据，不备份表结构(-t)
# 备份的数据，只有insert语句
mysqldump -uroot -p1234 -t db01 > db01.sql

##############################################################################

# 将db01数据库的表的表结构与数据分开备份(-T)
mysqldump -uroot -p1234 -T /root db01 score
# 执行上述指令，会出错，数据不能完成备份
# 因为指定的数据存放目录/root，MySQL认为是不安全的，需要存储在MySQL信任的目录下。
# 通过系统变量secure_file_priv查看信任目录
# show variables like 'secure_file_priv';
mysqldump -uroot -p1234 -T /var/lib/mysql-files/ db01 score
# score.sql记录表结构，score.txt是表数据文件
# 但是需要注意表数据文件，并不是记录一条条的insert语句，而是按照一定的格式记录表结构中的数据。
```

##  mysqlimport和source

mysqlimport是客户端数据导入工具，用来导入mysqldump加-T参数后导出的文本文件。
mysqlimport [options] db_name textfile1 [textfile2...]
mysqlimport -uroot -p2143 test /tmp/city.txt

如果需要导入sql文件,可以使用mysql中的source指令
source /root/xxxxx.sql

## 日志

## 错误日志

记录了当mysqld启动和停止时，以及服务器在运行过程中发生任何严重错误时的相关信息。
该日志是默认开启的，默认存放目录/var/log/，默认的日志文件名为mysqld.log。
```shell
# 查看日志位置
mysql> show variables like '%log_error%';
+---------------------+---------------------------------------------------------------+
| Variable_name       | Value                                                         |
+---------------------+---------------------------------------------------------------+
| binlog_error_action | ABORT_SERVER                                                  |
| log_error           | D:\Program\MySQL\mysql-5.7.24-winx64\data\LAPTOP-MIHCANFC.err |
| log_error_verbosity | 3                                                             |
+---------------------+---------------------------------------------------------------+
```

## 二进制日志
二进制日志（BINLOG）记录了所有的 DDL（数据定义语言）语句和 DML（数据操纵语言）语句，但不包括数据查询（SELECT、SHOW）语句。

作用
1. 灾难时的数据恢复
2. MySQL的主从复制。

在MySQL8版本中，默认二进制日志是开启的
```shell
mysql> show variables like '%log_bin%';
+---------------------------------+-------+
| Variable_name                   | Value |
+---------------------------------+-------+
| log_bin                         | OFF   |
| log_bin_basename                |       |
| log_bin_index                   |       |
| log_bin_trust_function_creators | OFF   |
| log_bin_use_v1_row_events       | OFF   |
| sql_log_bin                     | ON    |
+---------------------------------+-------+
```
其中
1. log_bin_basename
当前数据库服务器的binlog日志的基础名称(前缀)，具体的binlog文件名需要再该basename的基础上加上编号(编号从000001开始)。
2. log_bin_index
binlog的索引文件，里面记录了当前服务器关联的binlog文件有哪些。

## 二进制日志日志格式
1. STATEMENT
基于SQL语句的日志记录，记录的是SQL语句，对数据进行修改的SQL都会记录在日志文件中。
2. ROW
基于行的日志记录，记录的是每一行的数据变更。（默认）
3. MIXED
混合了STATEMENT和ROW两种格式，默认采用STATEMENT，在某些特殊情况下会自动切换为ROW进行记录。
```shell
mysql> show variables like '%binlog_format%';
+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| binlog_format | ROW   |
+---------------+-------+
```
配置二进制日志的格式，只需要在/etc/my.cnf中配置binlog_format参数即可。

## 查看二进制日志
mysqlbinlog
- -d 指定数据库名称，只列出指定的数据库相关操作。
- -o 忽略掉日志中的前n行命令。
- -v 将行事件(数据变更)重构为SQL语句
- -vv 将行事件(数据变更)重构为SQL语句，并输出注释信息

## 删除二进制日志
1. reset master
删除全部binlog日志，删除之后，日志编号，将从binlog.000001重新开始
2. purge master logs to 'binlog.*'
删除*编号之前的所有日志
3. purge master logs before 'yyyy-mm-dd hh24:mi:ss'
删除日志为"yyyy-mm-dd hh24:mi:ss"之前产生的所有日志
4. 设置过期时间
show variables like '%binlog_expire_logs_seconds%';

## 查询日志
查询日志中记录了客户端的所有操作语句，而二进制日志不包含查询数据的SQL语句。默认情况下，查询日志是未开启的。
```shell
mysql> show variables like '%general%';
+------------------+---------------------------------------------------------------+
| Variable_name    | Value                                                         |
+------------------+---------------------------------------------------------------+
| general_log      | OFF                                                           |
| general_log_file | D:\Program\MySQL\mysql-5.7.24-winx64\data\LAPTOP-MIHCANFC.log |
+------------------+---------------------------------------------------------------+
```
修改MySQL配置文件/etc/my.cnf，开启查询日志
```shell
# 开启查询日志，0关闭，1开启
general_log=1
# 设置日志的文件名，默认文件名host_name.log
general_log_file=mysql_query.log
```

## 慢查询日志
慢查询日志记录了所有执行时间超过long_query_time设置值并且扫描记录数不小于min_examined_row_limit的所有的SQL语句的日志
默认未开启。long_query_time默认为10秒，最小为0，精度可以到微秒。
如果需要开启慢查询日志，需要在MySQL的配置文件/etc/my.cnf中配置
```shell
# 慢查询日志
slow_query_log=1
# 执行时间参数
long_query_time=2
```
默认情况下，不会记录管理语句，也不会记录不使用索引进行查找的查询。
```shell
# 记录执行较慢的管理语句
log_slow_admin_statements=1
# 记录执行较慢的未使用索引的语句
log_queries_not_using_indexes=1
```

## 主从复制
1. 主库出现问题，可以快速切换到从库提供服务。
2. 实现读写分离，降低主库的访问压力。
3. 可以在从库中执行备份，以避免备份期间影响主库服务。

## 主从复制过程
1. Master主库在事务提交时，会把数据变更记录在二进制日志文件Binlog中。
2. 从库读取主库的二进制日志文件Binlog，写入到从库的中继日志Relay Log。
3. slave重做中继日志中的事件，将改变反映它自己的数据。

## 主从配置

## 分库分表
1. IO瓶颈：热点数据太多，数据库缓存不足，产生大量磁盘IO，效率较低。请求数据太多，带宽不够，网络IO瓶颈。
2. CPU瓶颈：排序、分组、连接查询、聚合统计等SQL会耗费大量的CPU资源，请求数太多，CPU出现瓶颈。

## 拆分策略
1. 垂直分库
2. 垂直分表
3. 水平分库
4. 水平分表

## 分库分表实现技术
1. shardingJDBC
基于AOP原理，在应用程序中对本地执行的SQL进行拦截，解析、改写、路由处理。需要自行编码配置实现，只支持java语言，性能较高。
2. MyCat
数据库分库分表中间件，不用调整代码即可实现分库分表，支持多种语言，性能不及前者。

## mycat
Mycat是开源的、活跃的、基于Java语言编写的MySQL数据库中间件。
可以像使用mysql一样来使用mycat，对于开发人员来说根本感觉不到mycat的存在。
开发人员只需要连接MyCat即可，而具体底层用到几台数据库，每一台数据库服务器里面存储了什么数据，都无需关心。
具体的分库分表的策略，只需要在MyCat中配置即可。
[mycat指南](https://www.yuque.com/ccazhw/tuacvk/doq6pc)

## mycat安装与使用

## mycat读写分离