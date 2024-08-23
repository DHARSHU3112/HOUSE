use exercise;
create table House( BHK INT(3) NOT NULL,Rent INT(6) NOT NULL, Size INT(6),Floor VARCHAR(56),Areatype VARCHAR(50),AreaLocality VARCHAR(50),
City TEXT,FurnishingStatus TEXT(50),Tenantpreferred TEXT(50),Bathroom INT(3),PointofContact VARCHAR(100));
insert INTO House values(2,17000,650,"1outof2","superarea","velachery","chennai","unfurnished","bachelors/family",2,"contactowner"),
(1,10000,650,"1outof2","superarea","velachery","chennai","unfurnished","bachelors",1,"contactowner"),(3,15000,1200,"groundoutof2",
"carpetarea","kovilambakkam","chennai","unfurnished","family",1,"contactowner");
show tables;
desc house;
 
select * FROM house;

UPDATE house set AreaLocality ="Tnagar" where BHK ="2";

select * from house where AreaLocality = "velachery"

select count(BHK) from house;

insert INTO House values(1,12000,1000,"2outof3","carpetarea","villivakkam","chennai","unfurnished","family",2,"contactagent"),
(2,30000,1300,"groundoutof2","superarea","velachery","chennai","semi-furnished","bachelors/family",1,"contactowner/contactagent"),(1,7000,400,"1of2",
"carpetarea","koyambedu","chennai","semi-furnished","family",1,"contactowner");

delete from house where AreaLocality ="Sholinganalur";

select sum(Rent) as total_rent,Size from house where Areatype ="superarea" group by Size order by total_rent desc;
  
show tables;
desc employee;

drop table House;