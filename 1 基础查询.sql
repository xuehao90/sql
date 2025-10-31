# 注释 
# xxxxxx
# 最基础的选择语句
# select 字段值 from 表

#查询全部的字段
SELECT * from emp

# 查询想要的字段
# select 字段名 from 表
select name from emp
#查询多个字段
select name,gender from emp


#查询员工表 只要姓名和性别为女性的员工
select name,gender from emp
# 选择条件 或者 判断条件---WHERE
where gender = "女"
# 合起来写
select name,gender from emp
where gender = "女"



#选出 员工表中 性别为男性 且年龄大于20岁的 姓名 员工编号 地址

select name,worknumber,workaddress,gender,age from emp
where gender = '男' and age>20 


#选出 员工表中 性别为男性 且年龄大于20岁的 姓名 员工编号 地址 且要按照 年龄从大到小排序
# 排序 ORDER BY
select name , worknumber , workaddress , gender , age from emp
where gender = '男' and age>20 
#ORDER BY age # 升序排列
order by age desc     # 降序排列

# 查询员工表中一共出现了多少个年龄
select age from emp


# 去重
select distinct age from emp
order by age desc

select distinct age from emp # 选出年龄字段
where age > 40 # 执行年龄大于40岁的   
# where 执行顺序 在order by 之前
order by age desc #排序  

# 对于数据做一个大的描述性统计分析
# 看异常值 判断是否符合业务逻辑 是否删除
# 看缺失值 1.缺失值 80% 删除 2.少量缺失值 进行填充 ---均值填充 0填充 
# 看重复值 删掉






