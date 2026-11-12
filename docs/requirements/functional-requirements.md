# Requisitos funcionais — Book Tracker

**Versão:** 1.0  
**Status:** Em elaboração

## 1. Objetivo do sistema

O Book Tracker será uma aplicação web para gerenciamento de biblioteca pessoal e acompanhamento de hábitos de leitura.

A aplicação permitirá cadastrar livros, registrar experiências de leitura, acompanhar metas, organizar uma lista de desejos e avaliar livros.

## 2. Requisitos funcionais

| ID | Requisito | Descrição |
|---|---|---|
| RF01 | Gerenciar livros | Cadastrar, consultar, editar e arquivar livros. |
| RF02 | Gerenciar autores | Cadastrar e consultar autores. |
| RF03 | Gerenciar editoras | Cadastrar e consultar editoras. |
| RF04 | Registrar leituras | Iniciar uma experiência de leitura associada a um livro. |
| RF05 | Concluir leituras | Registrar mês e ano de conclusão. |
| RF06 | Consultar histórico | Consultar as experiências de leitura de cada livro. |
| RF07 | Permitir releituras | Registrar novas experiências de leitura de livros já concluídos. |
| RF08 | Gerenciar avaliações | Criar e editar uma avaliação por livro. |
| RF09 | Gerenciar lista de desejos | Cadastrar livros desejados independentemente da biblioteca. |
| RF10 | Gerenciar metas | Definir metas anuais de leitura. |
| RF11 | Consultar dashboard | Visualizar indicadores e estatísticas de leitura. |

## 3. Regras de negócio

### Livros
- Cada livro terá um autor principal na primeira versão.
- A identificação de duplicidade considerará título e autor.
- ISBN, editora e ano de publicação poderão ser opcionais.
- Livros serão arquivados, preservando seus históricos.

### Leituras
- Um livro poderá possuir várias experiências de leitura.
- Uma leitura poderá estar em andamento ou concluída.
- Uma leitura em andamento não terá mês e ano de conclusão.
- Uma leitura concluída terá mês e ano de conclusão.
- O formato deverá ser físico ou digital.
- Não será permitido manter duas leituras em andamento do mesmo livro.
- Uma nova leitura será permitida após a conclusão da anterior.

### Avaliações
- A avaliação será opcional.
- Cada livro poderá possuir no máximo uma avaliação.
- A nota será obrigatória, de 1 a 5 estrelas.
- O comentário será obrigatório e deverá possuir pelo menos 150 caracteres.
- A avaliação poderá ser editada, inclusive após uma releitura.

### Metas
- Cada meta estará associada a um ano.
- O progresso será calculado com base nas leituras concluídas.
- Releituras também serão contabilizadas.

### Lista de desejos
- Será independente do cadastro de livros.
- Poderá ser associada posteriormente a um livro da biblioteca.

## 4. Fora do escopo inicial

- Autenticação e gerenciamento de usuários.
- Suporte a múltiplos autores por livro.
- Aplicativo mobile nativo.
- Arquitetura de microsserviços.
- Integrações externas com catálogos de livros.

## 5. Tecnologias previstas

- Backend: Java 21 e Spring Boot.
- Frontend: Angular e TypeScript.
- Banco de dados: PostgreSQL.
- Persistência: Spring Data JPA.
- Migrações: Flyway.
- Testes: JUnit 5, Mockito, Spring Boot Test, Vitest e Playwright.
- Infraestrutura: Docker e Docker Compose.
- CI: GitHub Actions.

## 6. Observações

Este documento representa a primeira versão dos requisitos. Novas regras e alterações deverão ser registradas conforme a evolução do projeto.