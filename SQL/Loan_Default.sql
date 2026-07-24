LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Loan_default.csv'
INTO TABLE loan_default
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
SHOW VARIABLES LIKE 'secure_file_priv';


DESCRIBE loan_default;

-- counting total loans
select count(*
) as total_loan_count
from loan_default;

-- total default
select count(loan_default.Default) As total_default
from loan_default
where `Default` = 1; -- default keyword ho teii varw yeslaii use garda `` use garnu parxa

-- Default Rate
-- % = default/total *100
select
    ROUND(
        (COUNT(CASE WHEN `Default` = 1 THEN 1 END) * 100.0 / COUNT(*)), 
        2
    ) AS default_rate_pct
FROM loan_default;

--