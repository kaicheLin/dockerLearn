-- 使用 atguigudb 資料庫

USE atguigudb;

-- 設定變數 @Abel_salary 為員工 Abel 的薪水
SET
    @Abel_salary = (
        SELECT salary
        FROM employees
        WHERE
            last_name = 'Abel'
    );

-- 查詢薪水高於 Abel 的員工
SELECT employee_id, last_name, salary
FROM employees
WHERE
    salary > @Abel_salary;

-- 刪除臨時表 department_avg_salary（如果存在）
DROP TEMPORARY TABLE IF EXISTS department_avg_salary;

-- 創建臨時表 department_avg_salary，包含每個部門的平均薪水
CREATE TEMPORARY TABLE department_avg_salary AS
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY
    department_id;

-- 查詢薪水高於部門平均薪水的員工
SELECT employee_id, last_name, salary
FROM
    employees
    JOIN department_avg_salary ON employees.department_id = department_avg_salary.department_id
WHERE
    salary > avg_salary;

-- MySQL 不支援使用 MIN(AVG(salary)) 這樣的語法
-- Oracle 可以使用這樣的語法

-- SELECT department_id, MIN(AVG(salary))
-- FROM employees
-- GROUP BY
--     department_id

SELECT department_id, AVG(salary)
FROM employees
GROUP BY
    department_id
ORDER BY AVG(salary) ASC
LIMIT 1;

SELECT department_id, avg_salary
FROM (
        SELECT department_id, AVG(salary) AS 'avg_salary'
        FROM employees
        GROUP BY
            department_id
    ) as temp_table
WHERE
    avg_salary = (
        SELECT MIN(avg_salary)
        FROM (
                SELECT department_id, AVG(salary) AS 'avg_salary'
                FROM employees
                GROUP BY
                    department_id
            ) as temp_table
    );