# Regras de negócio — Book Tracker

**Versão:** 1.0  
**Status:** Em elaboração

## 1. Livros

- Um livro deve possuir título e autor.
- Um livro deve possuir exatamente um autor principal na versão inicial.
- A editora, o ISBN e o ano de publicação são informações opcionais.
- A combinação de título e autor identifica um livro para fins de prevenção de duplicidade.
- Livros poderão ser cadastrados, consultados e editados.
- Um livro não será excluído fisicamente: poderá ser arquivado.
- O arquivamento deverá preservar o histórico de leituras e a avaliação associada.

## 2. Leituras

- Um livro poderá possuir várias experiências de leitura ao longo do tempo.
- Será permitido iniciar uma nova leitura após a conclusão de uma leitura anterior.
- Não será permitido manter duas leituras em andamento para o mesmo livro.
- Será permitido ler livros diferentes simultaneamente.
- Toda leitura deverá possuir um formato: físico ou digital.
- Uma leitura poderá estar em andamento ou concluída.
- O status será determinado pelas informações de conclusão:
  - Sem mês e ano de conclusão: em andamento.
  - Com mês e ano de conclusão: concluída.
- A conclusão deverá registrar mês e ano.
- O mês deverá estar entre 1 e 12.
- O sistema deverá validar o intervalo permitido para o ano de conclusão.
- O início da leitura não exigirá registro de data exata ou mês de início.
- Releituras serão contabilizadas como novas experiências de leitura.

## 3. Avaliações

- Um livro poderá possuir no máximo uma avaliação consolidada.
- A avaliação será opcional.
- Uma avaliação deverá possuir uma nota entre 1 e 5.
- O comentário deverá possuir pelo menos 150 caracteres.
- Uma avaliação existente poderá ser editada.
- Uma releitura não criará automaticamente uma nova avaliação.

## 4. Lista de desejos

- Será possível adicionar um livro à lista de desejos sem cadastrá-lo previamente na biblioteca.
- O item deverá possuir título e nome do autor.
- Notas adicionais serão opcionais.
- Um item poderá ser associado posteriormente a um livro já cadastrado.
- A associação não deverá excluir o livro da biblioteca.
- Um item poderá ser removido da lista de desejos.

## 5. Metas de leitura

- O usuário poderá cadastrar uma meta anual de leitura.
- Será permitida apenas uma meta por ano.
- A quantidade desejada deverá ser maior que zero.
- O progresso será calculado com base nas experiências de leitura concluídas no respectivo ano.
- Releituras serão contabilizadas individualmente.
- Leituras em andamento não serão contabilizadas.

## 6. Dashboard

- O dashboard deverá apresentar indicadores de leitura.
- As estatísticas deverão considerar o ano selecionado.
- O sistema deverá apresentar a quantidade de experiências concluídas.
- O sistema deverá apresentar a distribuição por formato físico e digital.
- Quando não existirem leituras concluídas, deverá ser apresentada uma situação vazia adequada.

## 7. Regras ainda pendentes de definição

As seguintes decisões deverão ser formalizadas antes da implementação das funcionalidades correspondentes:

- Intervalo mínimo e máximo permitido para o ano de conclusão.
- Critério de normalização de títulos e nomes para identificar livros duplicados.
- Comportamento do arquivamento quando o livro possuir uma leitura em andamento.
- Comportamento do item da lista de desejos após sua associação a um livro da biblioteca.
- Critérios para considerar um comentário válido em relação a espaços em branco e caracteres.

## 8. Limitações iniciais

- Não haverá autenticação ou gerenciamento de usuários na primeira versão.
- Não haverá suporte a múltiplos autores por livro.
- Não haverá integração com catálogos externos.
- Não haverá importação de dados do projeto SQLite anterior.
- Não haverá aplicação mobile nativa.