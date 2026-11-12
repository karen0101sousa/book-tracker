# Matriz de rastreabilidade — Book Tracker

**Versão:** 1.0  
**Status:** Em elaboração

## 1. Objetivo

Relacionar os requisitos funcionais (RF), os critérios de aceitação (CA) e os testes planejados para cada funcionalidade.

A matriz permitirá acompanhar a cobertura dos requisitos e identificar funcionalidades sem validação correspondente.

## 2. Rastreabilidade

| Funcionalidade | Requisitos | Critérios de aceitação |
|---|---|---|
| Livros | RF01 | CA01–CA08 |
| Autores | RF02 | CA01, CA03 |
| Editoras | RF03 | CA01 |
| Registro de leituras | RF04 | CA09–CA11 |
| Conclusão de leituras | RF05 | CA12–CA14 |
| Histórico | RF06 | CA16 |
| Releituras | RF07 | CA15 |
| Avaliações | RF08 | CA17–CA22 |
| Lista de desejos | RF09 | CA23–CA27 |
| Metas anuais | RF10 | CA28–CA31 |
| Dashboard | RF11 | CA32–CA35 |

## 3. Cobertura planejada

| Área | Verificações previstas |
|---|---|
| Livros | Cadastro válido, campos obrigatórios, duplicidade, edição e arquivamento. |
| Autores e editoras | Associação correta e validação de dados obrigatórios. |
| Leituras | Início, conclusão, simultaneidade, histórico e releituras. |
| Avaliações | Nota, tamanho do comentário, unicidade e edição. |
| Lista de desejos | Cadastro independente, associação, edição e remoção. |
| Metas | Unicidade por ano, quantidade válida e cálculo do progresso. |
| Dashboard | Indicadores por ano, distribuição por formato e estado vazio. |

## 4. Critérios de acompanhamento

Cada requisito deverá possuir pelo menos um teste correspondente.

Os testes poderão ser classificados como:

- **Não implementado:** teste ainda não foi criado.
- **Implementado:** teste automatizado ou manual foi elaborado.
- **Executado:** teste foi executado e possui resultado registrado.
- **Aprovado:** resultado corresponde ao comportamento esperado.
- **Reprovado:** resultado diverge do comportamento esperado.
- **Bloqueado:** execução depende de correção ou condição externa.

## 5. Atualização da matriz

A matriz deverá ser atualizada durante o desenvolvimento e a execução dos testes.

Quando um requisito for alterado, seus critérios de aceitação e testes relacionados deverão ser revisados.

A rastreabilidade será utilizada como apoio à análise de cobertura e à avaliação da qualidade do Book Tracker.