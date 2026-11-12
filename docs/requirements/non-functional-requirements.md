# Requisitos não funcionais — Book Tracker

**Versão:** 1.0  
**Status:** Em elaboração

## 1. Desempenho

### RNF01 — Tempo de resposta
As operações comuns de consulta, cadastro, edição e arquivamento deverão apresentar tempo de resposta adequado para uma aplicação de uso pessoal.

Como meta inicial, sob condições normais de execução local, as operações comuns deverão responder em até 2 segundos, desconsiderando o tempo de inicialização da aplicação.

### RNF02 — Consultas ao dashboard
As consultas de indicadores deverão utilizar operações eficientes no banco de dados, evitando processamento desnecessário na aplicação.

## 2. Segurança

### RNF03 — Validação de entradas
Os dados recebidos pela API deverão ser validados antes do processamento.

### RNF04 — Proteção contra SQL Injection
As consultas ao banco deverão utilizar mecanismos seguros de parametrização, evitando a concatenação de entradas do usuário em comandos SQL.

### RNF05 — Gerenciamento de configurações
Credenciais, senhas e informações sensíveis não deverão ser armazenadas diretamente no código-fonte ou versionadas no Git.

### RNF06 — Tratamento de erros
A aplicação não deverá expor informações internas, stack traces ou detalhes sensíveis em respostas destinadas ao usuário.

## 3. Confiabilidade e integridade

### RNF07 — Integridade referencial
O banco deverá preservar a consistência dos relacionamentos entre livros, autores, editoras, leituras e avaliações.

### RNF08 — Persistência dos dados
Os registros deverão permanecer disponíveis após reinicializações dos serviços, respeitando a configuração de persistência do banco de dados.

### RNF09 — Consistência das operações
Operações que envolvam múltiplas alterações relacionadas deverão utilizar transações quando necessário, evitando estados inconsistentes.

## 4. Usabilidade e acessibilidade

### RNF10 — Interface responsiva
A interface deverá se adaptar a diferentes tamanhos de tela, incluindo computadores, tablets e smartphones.

### RNF11 — Clareza das mensagens
O sistema deverá apresentar mensagens claras para operações concluídas, validações e erros.

### RNF12 — Acessibilidade
A interface deverá adotar boas práticas de acessibilidade, incluindo identificação de campos, navegação por teclado e contraste adequado.

## 5. Manutenibilidade

### RNF13 — Separação de responsabilidades
O backend deverá manter separação clara entre domínio, aplicação, infraestrutura e apresentação, evitando acoplamento desnecessário.

### RNF14 — Padronização
O código deverá seguir convenções de nomenclatura e organização próprias de Java, Spring Boot, Angular e TypeScript.

### RNF15 — Documentação
As principais decisões arquiteturais, regras de negócio e instruções de execução deverão ser documentadas.

## 6. Compatibilidade e portabilidade

### RNF16 — Navegadores
A aplicação deverá funcionar nas versões atuais dos principais navegadores: Chrome, Firefox e Edge.

### RNF17 — Ambiente reproduzível
O ambiente de desenvolvimento deverá utilizar Docker e Docker Compose para facilitar a configuração dos serviços necessários.

## 7. Testabilidade e qualidade

### RNF18 — Testes automatizados
As regras de negócio deverão possuir testes automatizados adequados, contemplando cenários positivos, negativos e valores-limite.

### RNF19 — Integração contínua
O projeto deverá possuir pipeline de CI para executar verificações de qualidade e testes automatizados a cada alteração enviada ao repositório.

### RNF20 — Qualidade do código
O projeto deverá adotar ferramentas e práticas que favoreçam a identificação antecipada de erros e problemas de qualidade.