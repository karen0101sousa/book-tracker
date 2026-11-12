# Modelo lógico de dados — Book Tracker

**Versão:** 1.0  
**Status:** Proposta para revisão

## 1. Visão geral

O banco de dados será relacional e utilizará PostgreSQL.

O modelo inicial será composto por sete entidades:

- AUTHOR
- PUBLISHER
- BOOK
- READING
- REVIEW
- WISHLIST_ITEM
- READING_GOAL

## 2. Entidades e atributos

### AUTHOR

Representa os autores dos livros.

| Atributo | Tipo lógico | Restrição |
|---|---|---|
| author_id | BIGINT | PK |
| name | VARCHAR(150) | NOT NULL, UNIQUE |

### PUBLISHER

Representa as editoras.

| Atributo | Tipo lógico | Restrição |
|---|---|---|
| publisher_id | BIGINT | PK |
| name | VARCHAR(150) | NOT NULL |

### BOOK

Representa os livros cadastrados na biblioteca.

| Atributo | Tipo lógico | Restrição |
|---|---|---|
| book_id | BIGINT | PK |
| title | VARCHAR(200) | NOT NULL |
| author_id | BIGINT | FK, NOT NULL |
| publisher_id | BIGINT | FK, NULL |
| publication_year | SMALLINT | NULL |
| isbn | VARCHAR(20) | NULL |
| archived_at | TIMESTAMP | NULL |
| created_at | TIMESTAMP | NOT NULL |
| updated_at | TIMESTAMP | NOT NULL |

Restrição de unicidade proposta: combinação de `title` e `author_id`.

### READING

Representa uma experiência de leitura de determinado livro.

| Atributo | Tipo lógico | Restrição |
|---|---|---|
| reading_id | BIGINT | PK |
| book_id | BIGINT | FK, NOT NULL |
| end_month | SMALLINT | NULL |
| end_year | SMALLINT | NULL |
| format | VARCHAR(10) | NOT NULL |
| created_at | TIMESTAMP | NOT NULL |
| updated_at | TIMESTAMP | NOT NULL |

Restrições propostas:

- `end_month` e `end_year` deverão ser preenchidos juntos ou permanecer ambos nulos.
- `end_month` deverá estar entre 1 e 12.
- `format` deverá aceitar apenas PHYSICAL ou DIGITAL.
- Deverá existir no máximo uma leitura em andamento por livro.

### REVIEW

Representa a avaliação consolidada de um livro.

| Atributo | Tipo lógico | Restrição |
|---|---|---|
| review_id | BIGINT | PK |
| book_id | BIGINT | FK, NOT NULL, UNIQUE |
| rating | SMALLINT | NOT NULL |
| comment | TEXT | NOT NULL |
| created_at | TIMESTAMP | NOT NULL |
| updated_at | TIMESTAMP | NOT NULL |

Restrições propostas:

- `rating` deverá estar entre 1 e 5.
- `comment` deverá possuir pelo menos 150 caracteres válidos.

### WISHLIST_ITEM

Representa um livro desejado que ainda não precisa estar cadastrado na biblioteca.

| Atributo | Tipo lógico | Restrição |
|---|---|---|
| wishlist_item_id | BIGINT | PK |
| title | VARCHAR(200) | NOT NULL |
| author_name | VARCHAR(150) | NOT NULL |
| book_id | BIGINT | FK, NULL, UNIQUE |
| notes | TEXT | NULL |
| created_at | TIMESTAMP | NOT NULL |

A associação com BOOK será opcional.

### READING_GOAL

Representa uma meta anual de leitura.

| Atributo | Tipo lógico | Restrição |
|---|---|---|
| goal_id | BIGINT | PK |
| year | SMALLINT | NOT NULL, UNIQUE |
| target_count | INTEGER | NOT NULL |
| created_at | TIMESTAMP | NOT NULL |
| updated_at | TIMESTAMP | NOT NULL |

Restrições propostas:

- Deverá existir apenas uma meta por ano.
- `target_count` deverá ser maior que zero.

## 3. Relacionamentos

- AUTHOR 1:N BOOK
- PUBLISHER 1:N BOOK
- BOOK 1:N READING
- BOOK 0:1 REVIEW
- BOOK 0:1 WISHLIST_ITEM

A relação entre BOOK e PUBLISHER é opcional do lado de BOOK.

A relação entre BOOK e REVIEW permite que um livro exista sem avaliação.

A relação entre BOOK e WISHLIST_ITEM representa uma associação opcional de um item desejado com um livro cadastrado.

## 4. Regras de integridade

- Chaves estrangeiras deverão preservar a integridade referencial.
- O livro deverá existir antes de uma leitura ou avaliação ser registrada.
- Uma leitura não poderá existir sem um livro associado.
- Uma avaliação não poderá existir sem um livro associado.
- Não deverá existir mais de uma leitura em andamento para o mesmo livro.
- Não deverá existir mais de uma avaliação para o mesmo livro.
- Não deverá existir mais de uma meta para o mesmo ano.

## 5. Observações para validação

Este modelo é uma proposta lógica e ainda não representa o esquema SQL definitivo.

Antes da implementação deverão ser confirmados:

- Intervalo permitido para os anos.
- Normalização dos campos usados na identificação de duplicidades.
- Comportamento do arquivamento de livros com leitura em andamento.
- Comportamento da associação de itens da lista de desejos.
- Tipos físicos e convenções definitivas de timestamps.

O modelo será posteriormente convertido em migrations do Flyway.