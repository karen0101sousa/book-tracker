# Plano de testes — Book Tracker

**Versão:** 1.0  
**Status:** Em elaboração

## 1. Objetivo

Definir a estratégia de testes do Book Tracker, estabelecendo os níveis de teste, técnicas, ferramentas, critérios e responsabilidades envolvidos na validação da aplicação.

O objetivo é verificar se o sistema atende aos requisitos funcionais e não funcionais, preservando a integridade dos dados e o comportamento esperado das funcionalidades.

## 2. Escopo

Serão contempladas as funcionalidades:

- Gerenciamento de livros.
- Gerenciamento de autores e editoras.
- Registro e conclusão de leituras.
- Histórico e releituras.
- Avaliações.
- Lista de desejos.
- Metas anuais.
- Dashboard e indicadores.

Também serão avaliadas as integrações entre frontend, backend e banco de dados.

## 3. Estratégia de testes

### 3.1 Testes unitários

Verificar regras de negócio e comportamentos isolados, sem depender de serviços externos.

Ferramentas previstas:

- JUnit 5.
- Mockito.
- Vitest e Angular TestBed.

### 3.2 Testes de integração

Verificar a integração entre componentes, persistência e banco de dados.

Ferramentas previstas:

- Spring Boot Test.
- Testcontainers.
- PostgreSQL.

### 3.3 Testes de API

Verificar os endpoints REST, incluindo:

- Métodos HTTP.
- Códigos de resposta.
- Estrutura dos dados.
- Validação de entradas.
- Tratamento de erros.
- Persistência e consulta dos registros.

Ferramentas previstas:

- MockMvc.
- Testes automatizados do Spring Boot.

### 3.4 Testes de frontend

Verificar os componentes Angular, formulários, validações, navegação e apresentação dos dados.

Ferramentas previstas:

- Angular TestBed.
- Vitest.

### 3.5 Testes end-to-end

Verificar os principais fluxos do usuário, desde a interface até a persistência no banco de dados.

Ferramenta prevista:

- Playwright.

### 3.6 Testes de desempenho

Avaliar o comportamento da API sob carga controlada, observando tempo de resposta, taxa de requisições e erros.

Ferramenta prevista:

- k6.

## 4. Técnicas de teste

Serão utilizadas, conforme a necessidade:

- Particionamento de equivalência.
- Análise de valor-limite.
- Tabelas de decisão.
- Testes de transição de estados.
- Testes baseados em regras de negócio.
- Testes de integração.
- Testes exploratórios.

## 5. Tipos de cenário

Os cenários deverão contemplar:

- Fluxos positivos.
- Fluxos negativos.
- Dados inválidos.
- Campos obrigatórios.
- Valores-limite.
- Restrições de unicidade.
- Integridade referencial.
- Estados permitidos e não permitidos.
- Persistência e recuperação dos dados.

## 6. Critérios de entrada

Uma funcionalidade estará apta a iniciar sua validação quando:

- Seus requisitos e critérios de aceitação estiverem definidos.
- Sua implementação estiver disponível no ambiente de testes.
- As dependências necessárias estiverem funcionando.
- Os dados de teste necessários estiverem preparados.

## 7. Critérios de saída

Uma funcionalidade poderá ser considerada validada quando:

- Os testes planejados para ela tiverem sido executados.
- Os critérios de aceitação aplicáveis tiverem sido verificados.
- Os defeitos encontrados estiverem registrados e avaliados.
- Não houver defeitos críticos ou impeditivos pendentes para a entrega.
- Os resultados estiverem documentados.

## 8. Ambiente e ferramentas

| Finalidade | Tecnologia |
|---|---|
| Backend | Java e Spring Boot |
| Testes unitários | JUnit 5 e Mockito |
| Testes de integração | Spring Boot Test e Testcontainers |
| Testes de frontend | Angular TestBed e Vitest |
| Testes end-to-end | Playwright |
| Desempenho | k6 |
| Banco de dados | PostgreSQL |
| Integração contínua | GitHub Actions |

## 9. Automação e integração contínua

O pipeline de CI deverá executar verificações de qualidade e testes automatizados.

A execução deverá contemplar os testes do backend e frontend, além das verificações end-to-end quando o ambiente necessário estiver disponível.

## 10. Registro e acompanhamento de defeitos

Os defeitos identificados deverão ser registrados com:

- Identificador.
- Descrição.
- Passos para reprodução.
- Resultado esperado.
- Resultado obtido.
- Evidências, quando aplicável.
- Severidade e prioridade.
- Status de tratamento.

## 11. Considerações finais

O plano de testes será atualizado conforme a evolução do projeto.

A estratégia busca incorporar qualidade desde o levantamento de requisitos até a entrega, evitando concentrar a validação apenas na etapa final de desenvolvimento.