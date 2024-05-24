-- Obtenemos los registros de la tabla books.
SELECT * FROM books;

--                  id                  |               name
-- ----------------------------------------------------------------------------
-- af2cf509-1a40-4fd7-91b1-fc5808cba0c2 | The Data Science Handbook
-- 76a9e044-2751-47dd-8437-248fa322f534 | Introduction to Statistical Learning
-- aa06ec2c-0f2e-4e41-aa52-0200fb993201 | The Art of Data Science

-- Eliminamos registros de la tabla books y devolver el campo "name"
DELETE FROM books WHERE name like '%Data Science%'
RETURNING name;