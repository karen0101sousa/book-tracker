# Critérios de aceitação — Book Tracker

**Versão:** 1.0  
**Status:** Em elaboração

## 1. Gerenciamento de livros

### História de usuário

Como leitor, quero cadastrar e gerenciar meus livros para manter minha biblioteca pessoal organizada.

### CA01 — Cadastrar livro com dados válidos

- **Dado** que o autor já está cadastrado;
- **Quando** o usuário informar um título válido e selecionar o autor;
- **Então** o sistema deverá cadastrar o livro e disponibilizá-lo na biblioteca.

### CA02 — Impedir cadastro sem título

- **Dado** que o usuário está cadastrando um livro;
- **Quando** tentar salvar o cadastro sem informar o título;
- **Então** o sistema deverá rejeitar a operação e informar que o título é obrigatório.

### CA03 — Impedir cadastro sem autor

- **Dado** que o usuário está cadastrando um livro;
- **Quando** não selecionar um autor;
- **Então** o sistema deverá rejeitar a operação.

### CA04 — Impedir duplicidade de livros

- **Dado** que já existe um livro cadastrado com determinado título e autor;
- **Quando** o usuário tentar cadastrar outro livro com a mesma combinação;
- **Então** o sistema deverá impedir o cadastro duplicado.

### CA05 — Permitir títulos iguais com autores diferentes

- **Dado** que existe um livro cadastrado com determinado título;
- **Quando** o usuário cadastrar um livro com o mesmo título, mas com outro autor;
- **Então** o sistema deverá permitir o cadastro.

### CA06 — Consultar livros

- **Dado** que existem livros cadastrados;
- **Quando** o usuário acessar sua biblioteca;
- **Então** o sistema deverá apresentar os livros disponíveis.

### CA07 — Editar livro

- **Dado** que existe um livro cadastrado;
- **Quando** o usuário alterar suas informações;
- **Então** o sistema deverá salvar os dados atualizados.

### CA08 — Arquivar livro

- **Dado** que existe um livro ativo;
- **Quando** o usuário solicitar seu arquivamento;
- **Então** o sistema deverá arquivar o livro, preservando seu histórico de leitura e avaliação.

## 2. Gerenciamento de leituras

### História de usuário

Como leitor, quero registrar minhas experiências de leitura para acompanhar os livros que estou lendo e aqueles que já concluí.

### CA09 — Iniciar leitura

- **Dado** que existe um livro cadastrado e ativo;
- **E** que ele não possui outra leitura em andamento;
- **Quando** o usuário iniciar uma nova leitura informando o formato;
- **Então** o sistema deverá registrar uma experiência de leitura em andamento.

### CA10 — Impedir duas leituras simultâneas do mesmo livro

- **Dado** que existe uma leitura em andamento para determinado livro;
- **Quando** o usuário tentar iniciar outra leitura do mesmo livro;
- **Então** o sistema deverá rejeitar a operação.

### CA11 — Permitir leituras simultâneas de livros diferentes

- **Dado** que existe uma leitura em andamento de determinado livro;
- **Quando** o usuário iniciar a leitura de outro livro;
- **Então** o sistema deverá permitir a operação.

### CA12 — Concluir leitura

- **Dado** que existe uma leitura em andamento;
- **Quando** o usuário informar mês e ano de conclusão;
- **Então** o sistema deverá registrar a conclusão da experiência de leitura.

### CA13 — Validar mês de conclusão

- **Dado** que o usuário está concluindo uma leitura;
- **Quando** informar um mês fora do intervalo de 1 a 12;
- **Então** o sistema deverá rejeitar a operação.

### CA14 — Validar ano de conclusão

- **Dado** que o usuário está concluindo uma leitura;
- **Quando** informar um ano fora do intervalo definido pelo sistema;
- **Então** o sistema deverá rejeitar a operação.

### CA15 — Permitir releitura

- **Dado** que o livro possui uma leitura anteriormente concluída;
- **Quando** o usuário iniciar uma nova experiência de leitura;
- **Então** o sistema deverá permitir o novo registro.

### CA16 — Consultar histórico

- **Dado** que um livro possui experiências de leitura registradas;
- **Quando** o usuário consultar seu histórico;
- **Então** o sistema deverá apresentar as experiências associadas ao livro, incluindo releituras.

## 3. Avaliações

### CA17 — Criar avaliação

- **Dado** que existe um livro cadastrado;
- **Quando** o usuário informar uma nota válida e um comentário com pelo menos 150 caracteres;
- **Então** o sistema deverá registrar a avaliação associada ao livro.

### CA18 — Permitir livro sem avaliação

- **Dado** que existe um livro cadastrado;
- **Quando** o usuário consultar os dados do livro sem ter criado uma avaliação;
- **Então** o sistema deverá apresentar o livro normalmente, sem exigir uma avaliação.

### CA19 — Validar nota

- **Dado** que o usuário está criando uma avaliação;
- **Quando** informar uma nota inferior a 1 ou superior a 5;
- **Então** o sistema deverá rejeitar a operação.

### CA20 — Validar comentário

- **Dado** que o usuário está criando uma avaliação;
- **Quando** informar um comentário com menos de 150 caracteres;
- **Então** o sistema deverá rejeitar a operação.

### CA21 — Impedir avaliações duplicadas

- **Dado** que um livro já possui uma avaliação;
- **Quando** o usuário tentar criar outra avaliação para o mesmo livro;
- **Então** o sistema deverá impedir a duplicação.

### CA22 — Editar avaliação

- **Dado** que um livro possui uma avaliação;
- **Quando** o usuário modificar a nota ou o comentário, respeitando as regras de validação;
- **Então** o sistema deverá atualizar a avaliação existente.

## 4. Lista de desejos

### CA23 — Adicionar livro à lista de desejos

- **Dado** que o usuário deseja adquirir ou ler determinado livro;
- **Quando** informar título e nome do autor;
- **Então** o sistema deverá registrar o item na lista de desejos, independentemente de existir um cadastro na biblioteca.

### CA24 — Consultar lista de desejos

- **Dado** que existem itens registrados;
- **Quando** o usuário acessar a lista de desejos;
- **Então** o sistema deverá apresentar os itens cadastrados.

### CA25 — Associar item da lista a um livro cadastrado

- **Dado** que existe um item na lista de desejos e um livro correspondente na biblioteca;
- **Quando** o usuário realizar a associação;
- **Então** o sistema deverá vincular os registros.

### CA26 — Editar item da lista de desejos

- **Dado** que existe um item cadastrado;
- **Quando** o usuário modificar suas informações;
- **Então** o sistema deverá salvar as alterações.

### CA27 — Remover item da lista de desejos

- **Dado** que existe um item na lista de desejos;
- **Quando** o usuário solicitar sua remoção;
- **Então** o sistema deverá removê-lo da lista, sem excluir um eventual livro associado da biblioteca.

## 5. Metas anuais

### CA28 — Criar meta anual

- **Dado** que não existe uma meta cadastrada para determinado ano;
- **Quando** o usuário informar o ano e a quantidade desejada de leituras;
- **Então** o sistema deverá registrar a meta.

### CA29 — Impedir metas duplicadas no mesmo ano

- **Dado** que já existe uma meta para determinado ano;
- **Quando** o usuário tentar cadastrar outra meta para o mesmo ano;
- **Então** o sistema deverá impedir a duplicação.

### CA30 — Validar quantidade da meta

- **Dado** que o usuário está criando uma meta;
- **Quando** informar uma quantidade menor ou igual a zero;
- **Então** o sistema deverá rejeitar a operação.

### CA31 — Calcular progresso da meta

- **Dado** que existe uma meta cadastrada para determinado ano;
- **Quando** o usuário consultar seu progresso;
- **Então** o sistema deverá apresentar a quantidade de experiências de leitura concluídas naquele ano, incluindo releituras.

## 6. Dashboard

### CA32 — Consultar indicadores de leitura

- **Dado** que existem experiências de leitura registradas;
- **Quando** o usuário acessar o dashboard;
- **Então** o sistema deverá apresentar indicadores consolidados de sua atividade de leitura.

### CA33 — Consultar estatísticas por ano

- **Dado** que existem leituras concluídas em diferentes anos;
- **Quando** o usuário consultar as estatísticas anuais;
- **Então** o sistema deverá apresentar a quantidade de experiências concluídas em cada ano.

### CA34 — Consultar distribuição por formato

- **Dado** que existem leituras registradas em diferentes formatos;
- **Quando** o usuário consultar as estatísticas por formato;
- **Então** o sistema deverá apresentar a distribuição entre leituras físicas e digitais.

### CA35 — Consultar dashboard sem registros

- **Dado** que ainda não existem leituras registradas;
- **Quando** o usuário acessar o dashboard;
- **Então** o sistema deverá apresentar indicadores zerados ou uma mensagem apropriada, sem gerar erros.