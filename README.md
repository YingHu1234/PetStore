# PetStore

<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="http://pic.90sjimg.com/design/01/39/53/98/5949e1799d5af.png"></a>
</p>
<h3 align="center">:koala: Pet store data warehouse :baby_chick:</h3>


---

<p align="center"> PetStore wants to make all the data accessible to all users to increase visibility across different functions and business processes. Need to integrate all databases from different departments to create an Enterprise Data Warehouse for PetStore.
    <br> 
</p>

## 📝 Table of Contents
- [About](#about)
- [Create Business Matrix](#business_matrix)
- [SSIS for Superset](#superset)
- [Database Diagram](#database_diagram)
- [SSAS for OLAP](#olap)
- [MDX query ](#mdx_query)
- [Conclusion](#conclusion)

## 🧐 About <a name = "about"></a>

PetStore is a nationwide seller of pets. There are standalone databases and mostly perform functions for their own departments of animal supply, merchandise supply, customer order with delayed inter-departmental communications. PetStore wants to make all the data accessible to all users to increase visibility across different functions and business processes.

![working](https://media.giphy.com/media/h8mSIeTWzDFooj3hgT/giphy.gif)


### Prerequisites
SQL, Excel, SQL Server Integration Services(SSIS), SQL Server Analysis Services(SSAS)

## 🐶 Create Business Matrix <a name = "business_matrix"></a>
Created a business matrix based on the tables that PetStore provided and found out the following things:
1. Dimensions tables
2. Fact table
3. Conformed dimensions table

![image](https://github.com/YingHu1234/PetStore/blob/master/img/1.PNG)


![image](https://github.com/YingHu1234/PetStore/blob/master/img/2.PNG)


Created schema for two conformed tables and date table:

![image](https://github.com/YingHu1234/PetStore/blob/master/img/3.PNG)






## 🐱 SSIS for Superset <a name="superset"></a>

Used SSIS to merge and join the two Supplier tables into one superset:

![image](https://github.com/YingHu1234/PetStore/blob/master/img/5.png)


![image](https://github.com/YingHu1234/PetStore/blob/master/img/6.png)


Used SSIS to merge and join the two Merchandise tables into one superset:

![image](https://github.com/YingHu1234/PetStore/blob/master/img/7.png)


![image](https://github.com/YingHu1234/PetStore/blob/master/img/8.png)



## 🐰 Database Diagram <a name = "database_diagram"></a>

After populating the data, generated Database Digram for OLAP purpose:

![image](https://github.com/YingHu1234/PetStore/blob/master/img/4.png)



## 🐴 SSAS for OLAP <a name = "olap"></a>

Used SSAS to created cube structures and dimensional usages:

![image](https://github.com/YingHu1234/PetStore/blob/master/img/9.png)


![image](https://github.com/YingHu1234/PetStore/blob/master/img/10.png)


## 🐺 MDX query <a name = "mdx_query"></a>

After the cube generated, MDX can be used for calculations and extracting needed data:

Display the animal sale price, sales tax, merchandise sale amount, and customer balance for each customer. 

![image](https://github.com/YingHu1234/PetStore/blob/master/img/11.png)



## 🎉 Conclusion <a name = "conclusion"></a>
In a word, it is very useful for employees from each department to avoid delayed inter-departmental communication by creating a data warehouse.
