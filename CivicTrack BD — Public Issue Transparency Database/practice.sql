-- ============================================================================
-- CivicTrack BD - Query Practice and Data Validation
-- ============================================================================
-- Purpose:
--   Provides quick SQL checks after loading schema and seed data.
--
-- Script sections:
--   1) Table row-count verification
--   2) Complaint data inspection
--   3) Basic analytical query practice
-- ============================================================================

USE civictrack_bd;

-- Verify row counts across core entities
SELECT COUNT(*) FROM divisions;
SELECT COUNT(*) FROM district;
SELECT COUNT(*) FROM upazilas;
SELECT COUNT(*) FROM departments;
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM officers;
SELECT COUNT(*) FROM complaints;
SELECT COUNT(*) FROM complaint_status_history;
SELECT COUNT(*) FROM complaint_ratings;

-- Review all complaints for manual inspection
select * from complaints;
SELECT COUNT(*) FROM complaints;

-- Example: find complaints from districts above average district_id
select district_id,title from complaints 
where district_id > (select avg(district_id) from complaints) ;

-- Department reference list
select * from departments;