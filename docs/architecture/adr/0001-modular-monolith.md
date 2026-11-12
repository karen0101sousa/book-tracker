# ADR-001 — Adoção de arquitetura modular

**Status:** Aceito  
**Data:** 12/11/2026

## Contexto

O Book Tracker será desenvolvido como uma aplicação web composta por frontend e backend independentes em termos de execução, comunicando-se por meio de uma API REST.

O projeto possui diferentes responsabilidades, como gerenciamento de livros, histórico de leituras, avaliações, lista de desejos, metas e indicadores.

É necessário adotar uma arquitetura que facilite a organização do código, a manutenção, os testes e a evolução do sistema, sem introduzir complexidade desnecessária.

## Decisão

Adotar uma arquitetura de **monólito modular**, utilizando princípios da Clean Architecture de maneira pragmática no backend.

O backend será desenvolvido em Java com Spring Boot, organizado para separar responsabilidades de domínio, aplicação, infraestrutura e apresentação.

O frontend será desenvolvido separadamente em Angular, consumindo os endpoints disponibilizados pela API REST.

Os módulos de negócio deverão manter responsabilidades bem definidas e evitar acoplamento desnecessário.

## Justificativa

A arquitetura modular permite organizar o sistema por responsabilidades e facilita a evolução de funcionalidades.

A abordagem de monólito modular foi escolhida porque o projeto não necessita, inicialmente, da distribuição de funcionalidades em serviços independentes.

A adoção de microserviços neste momento aumentaria a complexidade operacional, de comunicação e de infraestrutura sem oferecer benefícios proporcionais ao escopo atual.

## Consequências

- O sistema terá uma implantação inicial mais simples do que uma arquitetura baseada em microserviços.
- Os módulos poderão ser testados e evoluídos com responsabilidades mais bem definidas.
- A separação de camadas favorecerá a manutenibilidade e a testabilidade.
- Será necessário controlar as dependências entre os módulos para evitar acoplamento excessivo.
- Uma eventual divisão em serviços independentes poderá ser avaliada futuramente, caso exista uma necessidade real.