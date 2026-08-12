# sql-tuning  
PostgreSQLのインデックスによって、
SQLの実行計画とパフォーマンスがどう変化するのかを
実際に検証するための最小構成のサンプルです。

## 検証方法  
以下でPostgreSQLを起動・状態・停止が出来る
sudo service postgresql start 
sudo service postgresql status  
sudo service postgresql stop

### dbを作成  
postgresが起動しているかを確認  
sudo service postgresql status  

起動していなければ以下を実行  
sudo service postgresql start  

createdb index_lab  
psql -l  
psql index_lab  
\q  

### sql実行  
psql index_lab -f sql/01_create_table.sql  
psql index_lab -f sql/02_seed.sql  
psql index_lab -c "SELECT COUNT(*) FROM users;"  
psql index_lab -f sql/03_without_index.sql  
psql index_lab -f sql/04_create_index.sql  
psql index_lab -f sql/05_with_index.sql

※プロジェクトルートでmake runを実行すればpostgres起動からsql実行まで全て行ってくれます
