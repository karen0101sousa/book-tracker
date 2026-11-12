# ADR-003 — Estratégia de banco de dados

**Status:** Aceito  
**Data:** 12/11/2026

## Contexto

O Book Tracker precisa de um banco de dados relacional capaz de armazenar livros, autores, editoras, leituras, avaliações, itens da lista de desejos e metas anuais.

Também é necessário manter o histórico de alterações na estrutura do banco de forma controlada, permitindo reproduzir o ambiente em diferentes instalações.

## Decisão

Adotar:

- **PostgreSQL 17** como sistema gerenciador de banco de dados.
- **Spring Data JPA e Hibernate** para persistência e mapeamento objeto-relacional.
- **Flyway** para versionamento e execução das alterações do esquema do banco.
- **Docker Compose** para provisionar o PostgreSQL no ambiente de desenvolvimento.

As migrations do Flyway serão armazenadas em:

`backend/src/main/resources/db/migration`

## Justificativa

O PostgreSQL oferece recursos relacionais e restrições de integridade adequados às necessidades do projeto.

O Flyway permite versionar a estrutura do banco, registrar alterações e manter os ambientes sincronizados.

A utilização do Docker Compose facilita a configuração e a reprodução do ambiente de desenvolvimento.

## Consequências

- O banco de dados será independente da aplicação e poderá ser executado em container.
- As alterações estruturais serão controladas por migrations.
- O esquema do banco deverá ser atualizado por meio do Flyway.
- A aplicação utilizará JPA/Hibernate para operações de persistência.
- O projeto dependerá do PostgreSQL para seu funcionamento normal.
- A importação dos dados do projeto SQLite anterior não faz parte do escopo inicial.