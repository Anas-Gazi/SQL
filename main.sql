-- CREATE DATABASE civictrack_bd;
-- USE civictrack_bd;

-- -- division table
-- create table divisions(
-- division_id int auto_increment primary key,
-- division_name varchar(150) not null unique
-- );

-- -- Districts Table
-- create table  district(
-- district_id int auto_increment primary key,
-- division_id int not null,
-- district_name varchar(150) not null,
-- unique(district_name, division_id),
-- foreign key(division_id)
-- references divisions(division_id) on delete cascade

-- );

-- -- upazila
-- create table upazilas(
-- upazila_id int auto_increment primary key,
-- district_id int not null,
-- upazila_name varchar(150) not null,
-- unique(upazila_name, district_id),
-- foreign key(district_id)
-- references district(district_id)
-- on delete cascade 
-- ); 

-- -- users system
-- create table users(
-- user_id int auto_increment primary key,
-- full_name varchar(100) not null,
-- email varchar(100) not null unique,
-- phone varchar(100) not null unique,
-- role enum('citizen', 'officer', 'admin') not null,
-- created_at timestamp default current_timestamp
-- );

-- -- departments 
-- create table departments(
-- department_id int auto_increment primary key,
-- department_name varchar(100) not null unique,
-- created_at timestamp default current_timestamp
-- );

-- -- officers 
-- create table officers(
-- officers_id int auto_increment primary key,
-- user_id int not null unique,
-- department_id int not null,
-- designation varchar(100),
-- joined_at date,
-- foreign key(user_id)
-- references users(user_id)
-- on delete cascade,

-- foreign key(department_id)
-- references departments(department_id)
-- on delete cascade
-- );

-- -- Complaints

-- create table Complaints(
-- Complaint_id int auto_increment primary key,
-- user_id int not null,
-- department_id int not null,
-- division_id int not null,
-- district_id int not null,
-- upazila_id int not null,
-- tittle varchar(250),
-- description text not null,
-- priority_score int default 1 check( priority_score between 1 and 5),
-- current_status enum('submitted', 'under_review', 'investigation','resolved','rejected','esxlated')
-- default 'submitted',
-- created_at timestamp default current_timestamp,
-- updated_at timestamp default current_timestamp on update current_timestamp,

-- foreign key(user_id) references users(user_id),
-- foreign key(department_id) references departments(department_id),
-- foreign key(division_id) references divisions(division_id),
-- FOREIGN KEY (district_id) REFERENCES district(district_id),
-- FOREIGN KEY (upazila_id) REFERENCES upazilas(upazila_id)
-- );
-- -- modify column
-- alter table Complaints
-- modify column current_status ENUM('submitted', 'under_review', 'investigating', 'resolved', 'rejected', 'escalated') 
-- DEFAULT 'submitted';
-- alter table complaints
-- rename column tittle to title; 

-- -- Complaint Status History
-- create table complaint_status_history(
-- history_id int auto_increment primary key,
-- complaint_id int not null,
-- status enum('submitted','under_review','investigating','resolved','rejected','escalated') not null,
-- updated_by int,
-- remarks text,
-- updated_at timestamp default current_timestamp,

-- foreign key(complaint_id) references Complaints(complaint_id)
-- on delete cascade, 

-- foreign key(updated_by) references officers( officers_id)
-- on delete set null
-- );

-- -- evidence 
-- create table evidence (
-- evidence_id int auto_increment primary key,
-- complaint_id int not null,
-- file_type enum('image','video', 'document') not null,
-- file_path varchar(250) not null,
-- uploded_at timestamp default current_timestamp,
-- foreign key(complaint_id) references complaints(complaint_id)
-- on delete cascade
-- );
-- alter table evidence
-- rename column uploded_at to uploaded_at;

-- -- escalation rules

-- create table escalation_rules(
-- rule_id int auto_increment primary key,
-- from_status enum('submitted','under_review','investigating') not null,
-- to_status enum ('escalated') DEFAULT 'escalated',
-- days_limit int not null 
-- );
-- alter table escalation_rules
-- modify column to_status enum('escalated', 'resolved', 'rejected')DEFAULT 'escalated'; 

-- CREATE TABLE complaint_ratings (
--     rating_id INT AUTO_INCREMENT PRIMARY KEY,
--     complaint_id INT NOT NULL,
--     user_id INT NOT NULL,
--     rating INT NOT NULL CHECK (rating BETWEEN 1 AND 5),
--     feedback TEXT,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

--     UNIQUE (complaint_id, user_id),

--     FOREIGN KEY (complaint_id)
--         REFERENCES complaints(complaint_id)
--         ON DELETE CASCADE,
--     FOREIGN KEY (user_id)
--         REFERENCES users(user_id)
--         ON DELETE CASCADE
-- );

-- -- Indexes (Performance Optimization)

-- CREATE INDEX idx_complaints_department ON complaints(department_id);
-- CREATE INDEX idx_complaints_status ON complaints(current_status);
-- CREATE INDEX idx_complaints_created ON complaints(created_at);
-- CREATE INDEX idx_complaints_district ON complaints(district_id);
-- CREATE INDEX idx_status_history_complaint ON complaint_status_history(complaint_id);