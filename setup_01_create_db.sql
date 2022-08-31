-- Creating DB, role and granting read privilege
-- Please make sure you are connected with a user with the correct privileges
-- to run the statements

-- On postgresdb
CREATE DATABASE wefarmtestdb
    TEMPLATE = 'template0'
    ENCODING = 'UTF-8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8';
