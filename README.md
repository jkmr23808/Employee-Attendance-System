# Employee-Attendance-System
Building a database as Employee attendence system to track employee attendance, including clock-in and clock-out times, leaves, and absences using Mysql.

Database schema:

1 Employees- It stores name,emai.id,department

2 Attendencerecords-It stores employeeid,clockintime,clockouttime,workdate

3 Department-It stores department id,department name,managerID

SQL features used

i) JOINS:

   Used to retrieve detailed information about employee's working hours using joins
   
ii) Views :

   Created employee details view to know number of employees present in each department
   
iii) Stored procedures :

 Created a stored procedure to retrieve employees present or not
 
iv) Tables:

     Employees, AttendanceRecords, LeaveRequests, Departments
