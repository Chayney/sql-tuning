# sql-tuning  
PostgreSQLのインデックスによって、
SQLの実行計画とパフォーマンスがどう変化するのかを
実際に検証するための最小構成のサンプルです。

## 検証方法  

sudo service postgresql start  
sudo service postgresql status  
createdb index_lab  
psql -l  
psql index_lab  
\q  

Without index:

Seq Scan

With index:

Index Scan

The benchmark also shows:

- Execution Time
- Planning Time
- Buffers
- Rows Removed by Filter
