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

USE atguigudb;
SELECT department_id "部門id" FROM employees; -- 別名
SELECT DISTINCT department_id FROM employees; -- DISTINCT 不重複
SELECT DISTINCT job_id, department_id FROM employees;
SELECT salary, commission_pct, salary * (1 + IFNULL(commission_pct, -1)) * 12  FROM employees; -- IFNULL 運算時將NULL替為,後的值
SELECT * FROM `order`; -- (`...`) 萬一自訂名與關鍵字相同 要加 `...` 區分
SELECT 'E公司' AS '公司名稱', 010 '編號', employee_id, first_name FROM employees;
DESCRIBE employees -- 顯示表的結構 DESCRIBE = DESC

SELECT job_id, department_id, commission_pct
FROM employees
WHERE commission_pct <=> NULL; -- <=> 可以比較 NULL 的 = 符號

SELECT job_id, department_id, commission_pct
FROM employees
WHERE commission_pct IS NULL; 

SELECT job_id, department_id, commission_pct
FROM employees
WHERE ISNULL(commission_pct);

SELECT job_id, department_id, commission_pct
FROM employees
WHERE NOT 0; -- 只顯示判斷結果為true的 (NULL 不是 true)
SELECT 1 ; -- FROM DUAL 可以不寫
SELECT LEAST('a', 'b', 'c'); -- 最小值
SELECT LEAST('3a', '2b', '1c');
SELECT LEAST('3a', '11b', '12c');
SELECT LEAST('11a', '11b', '11');
SELECT LEAST('', 0, '0');
SELECT 0 = '0';
SELECT GREATEST('a', 'b', 'c'); -- 最大值
SELECT employee_id, department_name, employees.department_id
FROM employees, departments
WHERE employees.department_id = departments.department_id;
SELECT employee_id, job_id, salary, department_name, city
FROM employees, departments, locations
WHERE employees.department_id = departments.department_id 
AND departments.location_id = locations.location_id
AND salary >= 8000
AND city IN ('Oxford', 'Toronto', 'Munich')
ORDER BY job_id ASC, salary DESC;
SELECT employee_id, job_id, salary, department_name, city
FROM employees
LEFT OUTER JOIN departments ON employees.department_id = departments.department_id 
LEFT OUTER JOIN locations ON departments.location_id = locations.location_id;
SELECT department_name, city
FROM departments
JOIN locations ON departments.location_id = locations.location_id;

