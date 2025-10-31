#基础查询
# 1.查询全部数据
SELECT * from sec_buildings

# 2.查询二手房的名字

select block from sec_buildings

# 5.查询上海所有两室一厅的房子信息

select * from sec_buildings
where type = '2室1厅'
# 5.2 查询上海所有两室一厅 和二室零厅的房子信息

select * from sec_buildings
where type = '2室0厅'

select * from sec_buildings
where type = '2室1厅' or type = '2室0厅'   #type in ('2室1厅','2室0厅')
order by type


select * from sec_buildings
where type in ('2室1厅','2室0厅')
order by type

# 6.查询房价再1000万以上的二手房，名称，户型，面积，朝向楼层
select block,type,size,direction from sec_buildings
where price_unit >1000

# 7.查询房价再1000万以上的二手房，名称，户型，面积，朝向楼层 
# 且面积在100 到 200
select block,type,size,direction from sec_buildings
where price_unit >1000 and size >=100 and size <=200

select block,type,size,direction from sec_buildings
where price_unit >1000 and size between 100 and 200

# 8.查询浦东新区阳台朝南或者南北的二手房信息
select * from sec_buildings
where region ='浦东' and direction in ('朝南','朝北')

select * from sec_buildings
where region ='浦东' and (direction = '朝南' or direction = '朝北')
