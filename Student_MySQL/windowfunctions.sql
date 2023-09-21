use students;

CREATE TABLE marks (
student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    branch VARCHAR(255),
    marks INTEGER
);


INSERT INTO marks (name,branch,marks)VALUES 
('Nitish','EEE',82),
('Rishabh','EEE',91),
('Anukant','EEE',69),
('Rupesh','EEE',55),
('Shubham','CSE',78),
('Ved','CSE',43),
('Deepak','CSE',98),
('Arpan','CSE',95),
('Vinay','ECE',95),
('Ankit','ECE',88),
('Anand','ECE',81),
('Rohit','ECE',95),
('Prashant','MECH',75),
('Amit','MECH',69),
('Sunny','MECH',39),
('Gautam','MECH',51)

select * from marks;

-- Window functions

select *,
avg(marks) over() as 'Overall Avg Marks'
from marks;

select *,
avg(marks) over(partition by branch ) as 'Branch Avg Marks',
max(marks) over(partition by branch ) as 'Branch max Marks'
from marks;



-- Find students with marks greater than avg marks of their respective branches.

select *,
avg(marks) over( partition by branch) as 'Branch Average Marks'
from marks;

--creating another table t
select * from (select *,
avg(marks) over( partition by branch) as 'Branch_Average_Marks'
from marks) t 
where t.marks >= t.Branch_Average_Marks;



-- Rank/dense rank etc


select *,
rank() over(ORDER BY marks desc)
from marks;


--branch by branch
select *,
rank() over(partition by branch order by marks desc)
from marks;

-- rank vs desnse rank
select *,
rank() over(partition by branch order by marks desc) as 'Rank',
dense_rank() over(partition by branch order by marks desc) as 'Dense rank'
from marks;


-- create rank based on marks per branch cse-01..
select *,
row_number() over(partition by branch)
from marks;

-- using concat now
select *,
concat(branch , '-', row_number() over(partition by branch))
from marks;