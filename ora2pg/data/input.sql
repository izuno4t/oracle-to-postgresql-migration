select 1 from dual;

select *
from test01 t1,
     test02 t2
where t1.id(+) = t2.id;

select *
from test01 t1,
     test02 t2
where t1.id = t2.id(+);