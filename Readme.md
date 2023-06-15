**Step 1:** Create a Dockerfile
Create a file named Dockerfile (without any file extension) and place it in an empty directory.

**Step 2:** Create a Node.js app file (app.js)
Create a file named app.js in the same directory as the Dockerfile. This file will contain the code for your Node.js app.

**Step 3:** To build nodejs application 

docker build -t node-app .

**Step 4:** Create docker compose file to accomodate nodejs and mysql docker images together
Added mysql related details and Added NodeJS related details
Also give option to change file location to differnt location and mapped with different port
And keep nodejs application dependancy on db.

**Step 5:** After deploy I need to run one sql script,I can do automated later on.

mysql -u root -p

-- to use database
use test;

-- creating a new table
CREATE TABLE customer (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  phone VARCHAR(15)
);


**Step 6:** Run the application in 3000 port and backend mapped with ejs for easy representation.

**Step 7:** For implement best practice
i. All hardcoded value need to replaced by .env
ii. Run initial db script part of deployment
iii. Use stable version of ubuntu and mysql rather use the latest.

It will great if I can give quick demo.
