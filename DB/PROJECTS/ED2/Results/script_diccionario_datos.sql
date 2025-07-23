-- Script para obtener el diccionario de datos de la base de datos vitalcare en MySQL
USE vitalcare;

SELECT 
    TABLE_NAME AS 'Tabla',
    COLUMN_NAME AS 'Columna',
    COLUMN_TYPE AS 'Tipo de Dato',
    IS_NULLABLE AS 'Permite Nulos',
    COLUMN_KEY AS 'Clave',
    COLUMN_DEFAULT AS 'Valor por Defecto',
    EXTRA AS 'Extra'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'vitalcare'
ORDER BY TABLE_NAME, ORDINAL_POSITION;
