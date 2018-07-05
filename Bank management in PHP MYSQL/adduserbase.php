<?php
  $con = mysql_connect("localhost","root","");
  
  mysql_query("CREATE DATABASE IF NOT EXISTS BTCL",$con);
  mysql_select_db("BTCL",$con);
  
  $bank="create table bankuser(branchname varchar(20),bankuser varchar(20),password varchar(20))";
  mysql_query($bank,$con);
  
  $ins="INSERT INTO bankuser VALUES('Tangail','Rakib','papri')";
  mysql_query($ins,$con);

  $manager="CREATE TABLE admin(branchname varchar(20),adminlog varchar(20),password varchar(20))";
  mysql_query($manager,$con);
  
  $ins="INSERT INTO admin VALUES('Tangail','Tamal','kathbirali')";
  mysql_query($ins,$con);
  
  $sql="CREATE TABLE adduser(customerid int NOT NULL auto_increment, accountno int, username varchar(35), father varchar(20), mother varchar(20),address varchar(80),city varchar(20),state varchar(15),nationality varchar(20),cardno varchar(25),Religion varchar(15),gender varchar(10),birthday varchar(15),mobileno varchar(15), branchname varchar(20), accounttype varchar(20), balance int,amount int, PRIMARY KEY(customerid) )";
  mysql_query($sql,$con);
  
  $sql1="CREATE TABLE request(requestno int NOT NULL auto_increment,borrowername varchar(20),profession varchar(40),address varchar(100),loandate varchar(15),loantype varchar(30),annualincome int,refer varchar(20),referaddress varchar(100),referidentity varchar(100),mobileno varchar(15),amount int,status varchar(20), primary key(requestno))";
  mysql_query($sql1,$con);
  
  $sql4="CREATE TABLE loan(loanno int NOT NULL auto_increment,branchname varchar(20),borrowername varchar(20),profession varchar(40),loandate varchar(15),loantype varchar(30),identity varchar(100),address varchar(70),mobileno varchar(15),amount int, primary key(loanno))"; mysql_query($sql4,$con);
 
 $sql5="CREATE TABLE feedback(complainno int NOT NULL auto_increment,fullname varchar(25),mobileno int,email varchar(45),about varchar(1250),status varchar(15),primary key(complainno))";
 mysql_query($sql5,$con);
 
 $sql6="CREATE TABLE witdraw(witdrawid int NOT NULL auto_increment,customerid int,accountno int,customername varchar(25),date datetime,witdrawamount int,primary key(witdrawid), constraint fk5 foreign key(customerid) references adduser(customerid))";
 mysql_query($sql6,$con);
 
 $sql7="CREATE TABLE deposit(depositid int NOT NULL auto_increment,customerid int,accountno int,customername varchar(25),date datetime,depositamount int,primary key(depositid), constraint fk6 foreign key(customerid) references adduser(customerid))";
 mysql_query($sql7,$con);
 
  mysql_close($con);
  
?>
