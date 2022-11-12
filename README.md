# tpa-4
---
## Technical Project Assigment(TPA) #4 - Toko Online Retail Database
---
Tools yang saya gunakan untuk mengerjakan TPA-4 adalah aplikasi **Microsoft Sql Server Management Studio**. Dikarenakan file mdf(file untuk menjalankan query pada microsoft studio code) tidak bisa diupload pada github, jadi saya kosongkan nama storage nya dan tidak saya upload. Untuk menjalankan query sql pada aplikasi tersebut ada beberapa konfigurasi yang harus dilakukan, konfigurasi tersebut adalah : 
### 1. create database pada lembar kerja kosong di microsoft sql studio
```
CREATE DATABASE toko_retail
ON PRIMARY (
NAME=toko_retail,
FILENAME = 'lokasi storage\toko_retail.mdf',
SIZE=10,
MAXSIZE=50,
FILEGROWTH=2)
LOG ON(
NAME=toko_retail_log,
FILENAME='lokasi storage\toko_retail_log.ldf',
SIZE=3,
MAXSIZE=20,
FILEGROWTH=1)
```

### 2. Use database
```
use database toko_retail
```