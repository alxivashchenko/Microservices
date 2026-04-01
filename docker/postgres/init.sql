-- create databases
CREATE DATABASE auth_db;
CREATE DATABASE user_db;
CREATE DATABASE todos_db;


-- create users
CREATE USER auth_user WITH PASSWORD 'auth_password';
CREATE USER user_profile_user WITH PASSWORD 'user_profile_password';
CREATE USER todo_user WITH PASSWORD 'todo_password';


-- grant database ownership
ALTER DATABASE auth_db OWNER TO auth_user;
ALTER DATABASE user_db OWNER TO user_profile_user;
ALTER DATABASE todos_db OWNER TO todo_user;


-- grant privileges
GRANT ALL PRIVILEGES ON DATABASE auth_db TO auth_user;
GRANT ALL PRIVILEGES ON DATABASE user_db TO user_profile_user;
GRANT ALL PRIVILEGES ON DATABASE todos_db TO todo_user;