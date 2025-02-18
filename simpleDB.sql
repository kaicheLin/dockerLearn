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
