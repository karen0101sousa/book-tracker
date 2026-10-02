-- ============================================
-- BOOK TRACKER - AUDITORIA E INTEGRIDADE
-- ============================================


-- ============================================
-- 1. Leituras apontando para livros inexistentes
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    READING.READING_ID,
    READING.BOOK_ID
FROM READING
LEFT JOIN BOOK
    ON READING.BOOK_ID = BOOK.BOOK_ID
WHERE BOOK.BOOK_ID IS NULL;


-- ============================================
-- 2. Livros apontando para autores inexistentes
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    BOOK.BOOK_ID,
    BOOK.TITLE
FROM BOOK
LEFT JOIN AUTHOR
    ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
WHERE AUTHOR.AUTHOR_ID IS NULL;


-- ============================================
-- 3. Livros com referência para editora inexistente
-- NULL é permitido para livros sem editora conhecida.
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    BOOK.BOOK_ID,
    BOOK.TITLE,
    BOOK.PUBLISHER_ID
FROM BOOK
LEFT JOIN PUBLISHER
    ON BOOK.PUBLISHER_ID = PUBLISHER.PUBLISHER_ID
WHERE BOOK.PUBLISHER_ID IS NOT NULL
  AND PUBLISHER.PUBLISHER_ID IS NULL;


-- ============================================
-- 4. Meses inválidos
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    READING_ID,
    MONTH_READ
FROM READING
WHERE MONTH_READ NOT BETWEEN 1 AND 12;


-- ============================================
-- 5. Anos inválidos
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    READING_ID,
    YEAR_READ
FROM READING
WHERE YEAR_READ NOT BETWEEN 1900 AND 2100;


-- ============================================
-- 6. Formatos inválidos
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    READING_ID,
    FORMAT
FROM READING
WHERE FORMAT NOT IN ('Physical', 'Digital');


-- ============================================
-- 7. Títulos duplicados
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    TITLE,
    COUNT(*) AS QUANTIDADE
FROM BOOK
GROUP BY TITLE
HAVING COUNT(*) > 1;


-- ============================================
-- 8. Autores duplicados
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    NAME,
    COUNT(*) AS QUANTIDADE
FROM AUTHOR
GROUP BY NAME
HAVING COUNT(*) > 1;


-- ============================================
-- 9. Editoras duplicadas
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    NAME,
    COUNT(*) AS QUANTIDADE
FROM PUBLISHER
GROUP BY NAME
HAVING COUNT(*) > 1;


-- ============================================
-- 10. Leituras duplicadas
-- Mesmo livro no mesmo mês e ano.
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    BOOK_ID,
    MONTH_READ,
    YEAR_READ,
    COUNT(*) AS QUANTIDADE
FROM READING
GROUP BY BOOK_ID, MONTH_READ, YEAR_READ
HAVING COUNT(*) > 1;


-- ============================================
-- 11. Livros registrados mais de uma vez
-- Resultado esperado: zero linhas
-- ============================================

SELECT
    BOOK.TITLE AS LIVRO,
    COUNT(*) AS QUANTIDADE_LEITURAS
FROM READING
INNER JOIN BOOK
    ON READING.BOOK_ID = BOOK.BOOK_ID
GROUP BY BOOK.BOOK_ID
HAVING COUNT(*) > 1;


-- ============================================
-- 12. Quantidade de registros por tabela
-- ============================================

SELECT 'AUTHOR' AS TABELA, COUNT(*) AS QUANTIDADE
FROM AUTHOR

UNION ALL

SELECT 'PUBLISHER', COUNT(*)
FROM PUBLISHER

UNION ALL

SELECT 'BOOK', COUNT(*)
FROM BOOK

UNION ALL

SELECT 'READING', COUNT(*)
FROM READING;