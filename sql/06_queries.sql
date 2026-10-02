-- ============================================
-- BOOK TRACKER - CONSULTAS
-- ============================================


-- ============================================
-- 1. Listar todos os livros
-- ============================================

SELECT
    BOOK_ID,
    TITLE,
    PUBLICATION_YEAR
FROM BOOK
ORDER BY TITLE;


-- ============================================
-- 2. Listar livros com seus respectivos autores
-- ============================================

SELECT
    BOOK.TITLE AS LIVRO,
    AUTHOR.NAME AS AUTOR
FROM BOOK
INNER JOIN AUTHOR
    ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
ORDER BY BOOK.TITLE;


-- ============================================
-- 3. Listar livros com autores e editoras
-- ============================================

SELECT
    BOOK.TITLE AS LIVRO,
    AUTHOR.NAME AS AUTOR,
    PUBLISHER.NAME AS EDITORA
FROM BOOK
INNER JOIN AUTHOR
    ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
LEFT JOIN PUBLISHER
    ON BOOK.PUBLISHER_ID = PUBLISHER.PUBLISHER_ID
ORDER BY BOOK.TITLE;


-- ============================================
-- 4. Listar o histórico completo de leituras
-- ============================================

SELECT
    READING.READING_ID,
    BOOK.TITLE AS LIVRO,
    AUTHOR.NAME AS AUTOR,
    PUBLISHER.NAME AS EDITORA,
    READING.MONTH_READ AS MES,
    READING.YEAR_READ AS ANO,
    READING.FORMAT AS FORMATO
FROM READING
INNER JOIN BOOK
    ON READING.BOOK_ID = BOOK.BOOK_ID
INNER JOIN AUTHOR
    ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
LEFT JOIN PUBLISHER
    ON BOOK.PUBLISHER_ID = PUBLISHER.PUBLISHER_ID
ORDER BY
    READING.YEAR_READ,
    READING.MONTH_READ,
    READING.READING_ID;


-- ============================================
-- 5. Quantidade de livros lidos por ano
-- ============================================

SELECT
    YEAR_READ AS ANO,
    COUNT(*) AS QUANTIDADE_LIVROS
FROM READING
GROUP BY YEAR_READ
ORDER BY YEAR_READ;


-- ============================================
-- 6. Quantidade de livros por formato
-- ============================================

SELECT
    FORMAT AS FORMATO,
    COUNT(*) AS QUANTIDADE
FROM READING
GROUP BY FORMAT
ORDER BY QUANTIDADE DESC;


-- ============================================
-- 7. Quantidade de livros por ano e formato
-- ============================================

SELECT
    YEAR_READ AS ANO,
    FORMAT AS FORMATO,
    COUNT(*) AS QUANTIDADE
FROM READING
GROUP BY YEAR_READ, FORMAT
ORDER BY YEAR_READ, FORMAT;


-- ============================================
-- 8. Meses com três ou mais leituras
-- ============================================

SELECT
    YEAR_READ AS ANO,
    MONTH_READ AS MES,
    COUNT(*) AS QUANTIDADE_LEITURAS
FROM READING
GROUP BY YEAR_READ, MONTH_READ
HAVING COUNT(*) >= 3
ORDER BY YEAR_READ, MONTH_READ;


-- ============================================
-- 9. Quantidade de livros por autor
-- ============================================

SELECT
    AUTHOR.NAME AS AUTOR,
    COUNT(*) AS QUANTIDADE_LIVROS
FROM READING
INNER JOIN BOOK
    ON READING.BOOK_ID = BOOK.BOOK_ID
INNER JOIN AUTHOR
    ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
GROUP BY AUTHOR.AUTHOR_ID
ORDER BY QUANTIDADE_LIVROS DESC;


-- ============================================
-- 10. Livros publicados a partir de 2020
-- ============================================

SELECT
    TITLE AS LIVRO,
    PUBLICATION_YEAR AS ANO_PUBLICACAO
FROM BOOK
WHERE PUBLICATION_YEAR >= 2020
ORDER BY PUBLICATION_YEAR, TITLE;


-- ============================================
-- 11. Livros de um determinado autor
-- Exemplo: Fiodor Dostoievski
-- ============================================

SELECT
    BOOK.TITLE AS LIVRO,
    BOOK.PUBLICATION_YEAR AS ANO_PUBLICACAO
FROM BOOK
INNER JOIN AUTHOR
    ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
WHERE AUTHOR.NAME = 'Fiodor Dostoievski'
ORDER BY BOOK.TITLE;


-- ============================================
-- 12. Leituras em formato Digital
-- ============================================

SELECT
    BOOK.TITLE AS LIVRO,
    READING.YEAR_READ AS ANO,
    READING.MONTH_READ AS MES
FROM READING
INNER JOIN BOOK
    ON READING.BOOK_ID = BOOK.BOOK_ID
WHERE READING.FORMAT = 'Digital'
ORDER BY READING.YEAR_READ, READING.MONTH_READ;


-- ============================================
-- 13. Leituras em formato Physical
-- ============================================

SELECT
    BOOK.TITLE AS LIVRO,
    READING.YEAR_READ AS ANO,
    READING.MONTH_READ AS MES
FROM READING
INNER JOIN BOOK
    ON READING.BOOK_ID = BOOK.BOOK_ID
WHERE READING.FORMAT = 'Physical'
ORDER BY READING.YEAR_READ, READING.MONTH_READ;


-- ============================================
-- 14. Livros sem editora cadastrada
-- ============================================

SELECT
    BOOK.TITLE AS LIVRO,
    AUTHOR.NAME AS AUTOR
FROM BOOK
INNER JOIN AUTHOR
    ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
LEFT JOIN PUBLISHER
    ON BOOK.PUBLISHER_ID = PUBLISHER.PUBLISHER_ID
WHERE PUBLISHER.PUBLISHER_ID IS NULL
ORDER BY BOOK.TITLE;