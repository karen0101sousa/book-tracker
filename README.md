# Book Tracker

Aplicação web para gerenciamento de biblioteca pessoal e acompanhamento de hábitos de leitura.

## Objetivo

O Book Tracker tem como objetivo permitir que leitores organizem seus livros, acompanhem suas experiências de leitura, estabeleçam metas e registrem avaliações.

O projeto será desenvolvido como uma aplicação full stack, utilizando uma API REST para comunicação entre frontend e backend.

## Tecnologias

### Backend
- Java 21
- Spring Boot
- Spring Data JPA
- PostgreSQL
- Flyway
- JUnit 5
- Mockito

### Frontend
- Angular
- TypeScript
- Angular Material
- SCSS

### Qualidade e infraestrutura
- Docker e Docker Compose
- Playwright
- GitHub Actions
- OpenAPI / Swagger

## Arquitetura

A aplicação seguirá uma arquitetura de monólito modular, com separação de responsabilidades e princípios de Clean Architecture aplicados de forma pragmática.

## Funcionalidades previstas

- Gerenciamento de livros, autores e editoras.
- Registro e histórico de leituras.
- Acompanhamento de metas anuais.
- Lista de desejos.
- Avaliações e comentários.
- Dashboard com estatísticas de leitura.

## Estrutura do projeto

```text
book-tracker/
├── backend/
├── frontend/
├── e2e/
├── docs/
│   ├── architecture/
│   ├── requirements/
│   └── test-plans/
├── docker-compose.yml
└── README.md
```

## Status

Em desenvolvimento — fase de planejamento e definição arquitetural.