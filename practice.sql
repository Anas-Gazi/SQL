USE civictrack_bd;
SELECT COUNT(*) FROM divisions;
SELECT COUNT(*) FROM district;
SELECT COUNT(*) FROM upazilas;
SELECT COUNT(*) FROM departments;
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM officers;
SELECT COUNT(*) FROM complaints;
SELECT COUNT(*) FROM complaint_status_history;
SELECT COUNT(*) FROM complaint_ratings;

select * from complaints;
SELECT COUNT(*) FROM complaints;

select district_id,title from complaints 
where district_id > (select avg(district_id) from complaints) ;

select * from departments;