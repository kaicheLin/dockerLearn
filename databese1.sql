-- 這是註解
# 這也是註解

/*
這是多行註解
*/

# DDL 資料定義語言（data definition language)
# 用於明確定義概念綱要(conceptual schemas)及內部綱要(internal schemas)
# create alter drop rename

# DML 資料調處語言（Data Manipulation Language)
# 用於資料庫操作，對資料庫其中的物件和資料執行存取工作
# insert delete update select

# DCL 資料控制語言 (Data Control Language)
# 是一種可對資料存取權進行控制
# commit rollback savepoint


CREATE DATABASE DatabaseTest;   -- 建立新資料庫
show DATABASES; -- 查看所有資料庫
use DatabaseTest;   -- 使用/定位到資料庫
create table tableTest(id int, name varchar(20), age int);  -- 建立新資料表 (欄位 型態)
show tables;    -- 查看所有資料表
insert into tableTest values (1, 'man1', 15);   -- 輸入 資料values(...) 到 資料表tableTest
insert into tableTest values (2, '一個人', 14);
insert into tableTest values (3, 'man2', 16);
delete from tableTest where id = 3;     -- 刪除 資料表tableTest 欄位id=3 的內容
select * from tableTest;    -- 查看 資料表tableTest 所有內容


