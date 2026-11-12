# ADR-002 — Organização do projeto em monorepo

**Status:** Aceito  
**Data:** 12/11/2026

## Contexto

O Book Tracker será composto por diferentes partes:

- Backend desenvolvido com Java e Spring Boot.
- Frontend desenvolvido com Angular.
- Testes end-to-end utilizando Playwright.
- Documentação técnica e funcional.

Embora essas partes possuam tecnologias e responsabilidades distintas, fazem parte do mesmo produto e precisam evoluir de maneira coordenada.

## Decisão

Adotar a estratégia de **monorepo**, mantendo o backend, frontend, testes end-to-end e documentação em um único repositório Git.

A estrutura principal será:

```text
book-tracker/
├── backend/
├── frontend/
├── e2e/
├── docs/
├── docker-compose.yml
├── .gitignore
└── README.md
```

Cada aplicação terá sua própria organização interna e gerenciamento de dependências.

## Justificativa

O monorepo facilita o gerenciamento do projeto, centraliza a documentação e permite acompanhar alterações relacionadas ao frontend, backend e testes em um único histórico de versões.

Também simplifica a configuração inicial do pipeline de integração contínua.

## Consequências

- Um único repositório será utilizado para versionar todo o produto.
- Backend e frontend poderão evoluir em ritmos diferentes, mantendo seus limites de responsabilidade.
- Alterações que envolvam diferentes partes do sistema poderão ser registradas em um mesmo commit quando fizerem parte de uma mudança coerente.
- O pipeline de CI deverá permitir executar verificações específicas para cada aplicação.
- Será necessário manter a organização interna das pastas para evitar dependências indevidas.