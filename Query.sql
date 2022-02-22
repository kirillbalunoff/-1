USE TestImport

SELECT SUM ([Всего (в МБ)]) AS 'Размер всех курсов (в МБ):' FROM [Import]
SELECT COUNT ([Всего (в МБ)]) AS 'Минимальное количество курсов, которое нужно удалить:' FROM (SELECT TOP(61) [Всего (в МБ)] FROM [Import]) AS Import
SELECT SUM ([Всего (в МБ)]) AS 'Минимальный объём очистки курсов (в МБ):' FROM (SELECT TOP(61) [Всего (в МБ)] FROM [Import]) AS Import