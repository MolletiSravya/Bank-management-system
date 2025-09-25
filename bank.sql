USE bank_system;
set autocommit=0;



CREATE TABLE user (
    name VARCHAR(100) NOT NULL,
    account_no BIGINT AUTO_INCREMENT PRIMARY KEY,
    mobile_no BIGINT UNIQUE NOT NULL,
    pin INT NOT NULL,
    balance BIGINT NOT NULL DEFAULT 0
);
alter table user modify account_no bigint;

CREATE TABLE admins (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_no BIGINT NOT NULL,
    action_type VARCHAR(50) NOT NULL,
    amount BIGINT NOT NULL,
    balance_after BIGINT,
    date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_no) REFERENCES user(account_no)
);