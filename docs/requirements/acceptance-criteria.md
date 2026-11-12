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

## 3. Observações para validação posterior

- O intervalo permitido para anos de conclusão ainda deverá ser formalizado.
- Os critérios serão complementados com testes de valores-limite, validação de formatos e cenários de arquivamento.
- Os critérios das avaliações, metas, lista de desejos e dashboard serão adicionados nas próximas versões.