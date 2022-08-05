Microsoft Windows [Version 10.0.19044.1826]
(c) Microsoft Corporation. All rights reserved.

C:\Users\admin>cd..

C:\Users>cd..

C:\>cd xampp

C:\xampp>cd mysql

C:\xampp\mysql>cd bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 11
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| kartika            |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
7 rows in set (0.001 sec)

MariaDB [(none)]> USE KARTIKA;
Database changed
MariaDB [KARTIKA]> create table_kartika(
    -> nama varchar(50) not null,
    -> tanggal_lhr(date)
    -> umur int
    -> jurusan varchar(10)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table_kartika(
nama varchar(50) not null,
tanggal_lhr(date)
umur int
jurusan ...' at line 1
MariaDB [KARTIKA]> create table siswa(
    -> id siswa varchar(10) not null primary key,
    -> nama varchar(50)
    -> tanggal_lahir date
    -> umur int
    -> juruasan varchar(20)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varchar(10) not null primary key,
nama varchar(50)
tanggal_lahir date
umur in...' at line 2
MariaDB [KARTIKA]> create table_kartika(id_siswa varchar(10), nama_siswa varchar(50), alamat varchar(100), primary key(id_siswa));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table_kartika(id_siswa varchar(10), nama_siswa varchar(50), alamat varchar(10...' at line 1
MariaDB [KARTIKA]>
MariaDB [KARTIKA]>
MariaDB [KARTIKA]> create table_kartika(id_siswa varchar(10), nama_siswa varchar(50), alamat varchar(100),primary key(id_siswa));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table_kartika(id_siswa varchar(10), nama_siswa varchar(50), alamat varchar(10...' at line 1
MariaDB [KARTIKA]> create table tbl_kartika(id_siswa varchar(10), nama_siswa varchar(50), alamat varchar(100),primary key(id_siswa));
Query OK, 0 rows affected (0.043 sec)

MariaDB [KARTIKA]> show tables;
+-------------------+
| Tables_in_kartika |
+-------------------+
| tbl_kartika       |
+-------------------+
1 row in set (0.001 sec)

MariaDB [KARTIKA]> decs tbl_kartika;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'decs tbl_kartika' at line 1
MariaDB [KARTIKA]> desc tbl_kartika;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| id_siswa   | varchar(10)  | NO   | PRI | NULL    |       |
| nama_siswa | varchar(50)  | YES  |     | NULL    |       |
| alamat     | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
3 rows in set (0.023 sec)

MariaDB [KARTIKA]> select * from tbl_kartika;
Empty set (0.055 sec)

MariaDB [KARTIKA]> select * from tbl_kartika;
Empty set (0.001 sec)

MariaDB [KARTIKA]> INSERT into tbl_kartika(id_siswa, nama_siswa, alamat) values ("1","kartika","cijambe_subang");
Query OK, 1 row affected (0.010 sec)

MariaDB [KARTIKA]> select * from tbl_kartika;
+----------+------------+----------------+
| id_siswa | nama_siswa | alamat         |
+----------+------------+----------------+
| 1        | kartika    | cijambe_subang |
+----------+------------+----------------+
1 row in set (0.000 sec)

MariaDB [KARTIKA]>