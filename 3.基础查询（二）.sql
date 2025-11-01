select * from emp
limit 10

#模糊匹配
# '%浩'以浩结尾的字符串
# '薛%'以薛开头的字符串
# '_浩'匹配单个字符

#查询姓名为三个字的员工
SELECT name from emp
where name not like '__'

#查询姓名为两个字的员工
SELECT name from emp
where name like '__'

#查询以 小 为开头的员工姓名
SELECT name from emp
where name like '小%'

#查询身份证号最后一位为x的员工信息
SELECT idcard from emp
where idcard like '%x'

#计算企业的员工数量 空值和非空的区别
# 注意 count 不会把空值也纳入统计
select count(id) from emp
SELECT count(worknumber) from emp
select count(*) from emp

select count(idcard) from emp

select count(id) from emp
where idcard is not null

#统计企业员工的平均年龄
select AVG(age) as '平均年龄' from emp


#另一种方式计算平均年龄
select sum(age)/count(age) as '平均年龄' from emp

#计算最大年龄和最小年龄
select max(age) as '最大值',min(age) as '最小值' from emp
#where 分组前过滤 having 后过滤

#根据性别分组 统计男女员工的数量
select count(gender) as '人数',gender as '性别' from emp
group by gender

#根据性别分组 统计男女的平均年龄
SELECT avg(age) as '平均年龄',gender as '性别' from emp
GROUP BY gender

#查询年龄小于 45岁的员工 并根据工作地址分组 获取员工数量大于等于3的全部员工
#1.根据工作地址分组
#2.员工数量大于等于3
select count(id), workaddress from emp
where age < 45
group by workaddress
having count(id) >=3

#子查询/嵌套查询
select count(id), workaddress from (select * from emp where age <45) as new_data
group by workaddress
having count(id) >=3


###
SELECT xxx from xxx
where 判断条件
group by xxx
HAVING 判断条件
order by
limit 


