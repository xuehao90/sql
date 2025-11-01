SELECT * from credit_card
#查询表格的起始日期到终止日期
select min(Date) as '起始日期',max(Date) as'终止日期'from credit_card

select count(Loan_Default) from credit_card
where Loan_Default = 1
select count(*) from credit_card

select sum(Loan_Default)/count(*) from credit_card
select avg(Loan_Default) from credit_card

#命中率 这个特征有值的比率 非空率
select avg(DebtRatio) from credit_card


#按信用等级（credit_rating）分组，统计每个等级的总贷款金额（SUM(loan_amount)）和用户数量（COUNT(*)）
#要求筛选出 “总贷款金额超过 500000 元且用户数大于 20” 的等级，结果按总贷款金额降序排序。
select sum(Amount),count(CreditRating)from credit_card
GROUP BY CreditRating
HAVING sum(Amount)>50000 and count(CreditRating)>20

select sum(Amount) as total,count(CreditRating) as rating from credit_card
GROUP BY CreditRating
HAVING total>50000 and rating>20
ORDER BY total desc


#查询职业（occupation）为 “Teacher” 或 “Doctor”、信用等级（credit_rating）为 “A” 或 “B”、且月收入（monthly_income）非空的用户
#统计这些用户的平均贷款期限（AVG(loan_term)，保留 1 位小数）和最大贷款金额（MAX(loan_amount)），结果按平均贷款期限升序排序
select AVG(LoanTerm),MAX(Amount),Occupation from credit_card
where Occupation in ('Teacher','Docter') and CreditRating in ('A','B') and Income is not null
GROUP BY Occupation


#按还款方式（repayment_method）分组
#计算每组的 “平均月收入”（仅统计月收入非空的用户，即AVG(monthly_income)）和 #“逾期用户数”（COUNT(loan_default)筛选loan_default=1）
#要求排除 “平均月收入低于 5700 元” 的组，结果按逾期用户数降序排序
select AVG(Income),count(Loan_Default)from credit_card
where Income is not null and Loan_Default =1
GROUP BY RepaymentMethod
HAVING AVG(Income) >=5700
order by count(Loan_Default) desc


#查找年龄（age）在 25-35 岁之间、居住地址（residential_address）包含 “Beijing”
#且贷款期限（loan_term）在 24-36 个月之间的用户
#按性别（gender）分组，统计每组的总贷款金额（SUM(loan_amount)）和用户数（COUNT(*)）
#结果按总贷款金额升序排序
select SUM(Amount),count(*),Gender from credit_card
where (age BETWEEN 25 and 35) and (ResidentialAddress  like 'Beijing%' or ResidentialAddress  like '%Beijing' or ResidentialAddress  like '%Beijing%') and (LoanTerm BETWEEN 24 and 36)
GROUP BY Gender
ORDER BY SUM(Amount)

#按学历（education）分组
#统计每个学历的 “非逾期用户数”（loan_default=1）和 “平均贷款金额”（AVG(loan_amount)）
#要求筛选出 “学历非空” 且 “平均贷款金额在 80000-150000 元之间” 的组，结果按非逾期用户数降序排序


#统计信用等级（credit_rating）为 “C” 或 “D”
#且贷款金额（loan_amount）超过 100000 元的用户中
#不同职业（occupation）的用户数（COUNT(*)）和总贷款金额（SUM(loan_amount)
#仅显示 “用户数大于 5” 的职业，结果按总贷款金额降序排序。


#查询居住地址（residential_address）不包含 “Shanghai” #且月收入（monthly_income）为空的用户。
#按还款方式（repayment_method）分组
#统计每组的用户数（COUNT(*)）和最大贷款期限（MAX(loan_term)）
#结果按用户数升序排序。

