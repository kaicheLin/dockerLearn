-- 這是註解
# 這也是註解

/*
這是多行註解
*/

# windows不分大小寫 linux 分大小寫
# 關鍵字(CREATE, SHOW, ...)一般大寫
# 庫名,表名 欄位名 一般小寫


# DDL 資料定義語言（data definition language)
# 用於明確定義概念綱要(conceptual schemas)及內部綱要(internal schemas)
# create alter drop rename

# DML 資料調處語言（Data Manipulation Language)
# 用於資料庫操作，對資料庫其中的物件和資料執行存取工作
# insert delete update select

# DCL 資料控制語言 (Data Control Language)
# 是一種可對資料存取權進行控制
# commit rollback savepoint


CREATE DATABASE databaseTest;   -- 建立新資料庫
SHOW DATABASES; -- 查看所有資料庫
USE databaseTest;   -- 使用/定位到資料庫
CREATE TABLE tableTest(id int, name varchar(20), age int);  -- 建立新資料表 (欄位 型態)
SHOW TABLE;    -- 查看所有資料表
INSERT INTO tableTest values (1, 'man1', 15);   -- 輸入 資料values(...) 到 資料表tableTest
INSERT INTO tableTest values (2, '一個人', 14);
INSERT INTO tableTest values (3, 'man2', 16);
DELETE FROM tableTest WHERE id = 3;     -- 刪除 資料表tableTest 欄位id=3 的內容
SELECT * FROM tableTest;    -- 查看 資料表tableTest 所有內容



USE atguigudb;
SELECT department_id "部門id" FROM employees; -- 別名
SELECT DISTINCT department_id FROM employees; -- DISTINCT 不重複
SELECT DISTINCT job_id, department_id FROM employees;
SELECT salary, commission_pct, salary * (1 + IFNULL(commission_pct, -1)) * 12  FROM employees; -- IFNULL 運算時將NULL替為,後的值

