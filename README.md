# Book Tracker

Projeto desenvolvido para praticar **SQL e modelagem de banco de dados** utilizando SQLite.

O sistema armazena livros, autores, editoras e o histórico de leituras, permitindo realizar consultas e análises básicas sobre os dados.

## Tecnologias

* SQLite
* SQL
* SQLiteStudio


## Banco de dados

O banco possui quatro tabelas:

* **AUTHOR** — autores
* **PUBLISHER** — editoras
* **BOOK** — livros
* **READING** — histórico de leituras


## SQL praticado

O projeto utiliza conceitos como:

* `CREATE TABLE`
* `INSERT`
* `SELECT`
* `WHERE`
* `JOIN`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `COUNT`
* `PRIMARY KEY`
* `FOREIGN KEY`
* `UNIQUE`
* `CHECK`

Também possui consultas de **auditoria e integridade dos dados**.

## Como reproduzir

Os scripts SQL podem ser executados em ordem para reconstruir o banco:

```text
01_create_tables.sql
02_insert_authors.sql
03_insert_publishers.sql
04_insert_books.sql
05_insert_readings.sql
```

O arquivo `07_auditoria.sql` pode ser utilizado para validar a integridade dos dados e `06_queries.sql` para explorar o banco.

## Objetivo do projeto

Transformar o estudo de SQL em um projeto prático, consolidando conhecimentos de **modelagem, relacionamentos, consultas e integridade de dados**.
