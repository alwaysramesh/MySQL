use cybrom;
select *, lead(marks) over(partition by subject ) from s500;
-- countinue hai to next value nhi to null marks wise hi dekhenge

select *, lag(marks) over(partition by subject ) from s500;
-- previus value hai us subject ka marks to wahui value aayegi nhi to null
select *, lead(marks,2) over(partition by subject ) from s500;
-- 2 skip kar ke dega marks us subject ka
select count(*) from s500;
