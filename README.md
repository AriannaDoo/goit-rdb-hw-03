# goit-rdb-hw-03

## Домашнє завдання 3

### Завантаження даних та основи SQL. DQL-команди.

---

## Опис роботи

У цьому домашньому завданні було імпортовано дані з CSV-файлів у MySQL Workbench та виконано SQL-запити для отримання й аналізу даних з таблиць бази даних.

Під час виконання роботи були використані такі SQL-команди та функції:

- SELECT
- FROM
- DISTINCT
- ORDER BY
- LIMIT
- WHERE
- BETWEEN
- COUNT
- AVG
- MIN
- MAX
- GROUP BY

---

## Завдання 1

Вибрати всі стовпчики з таблиці `products`.

SELECT *
FROM products;

<img width="1811" height="1018" alt="p1_1_products_all" src="https://github.com/user-attachments/assets/2285aaf0-99a6-435c-82ae-6ebc7b661f03" />

Вибрати тільки стовпчики `name` та `phone` з таблиці `shippers`.

SELECT name, phone
FROM shippers;

<img width="1712" height="824" alt="p1_2_shippers_name_phone" src="https://github.com/user-attachments/assets/fe74b525-2b69-4153-adce-bb5ced12e598" />


---

## Завдання 2

Знайти середнє, максимальне та мінімальне значення стовпчика `price` таблиці `products`.

SELECT 
AVG(price) AS average_price,
MAX(price) AS max_price,
MIN(price) AS min_price
FROM products;

<img width="1572" height="710" alt="p2_price_avg_max_min" src="https://github.com/user-attachments/assets/b02ccedb-02b0-4204-a990-d49eb8edd644" />

---

## Завдання 3

Обрати унікальні значення колонок `category_id` та `price` таблиці `products`, відсортувати за спаданням `price` та вивести лише 10 рядків.

SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;

<img width="1587" height="714" alt="p3_distinct_category_price" src="https://github.com/user-attachments/assets/075a5d45-8c27-45d3-861d-c9fdba5abaac" />

---

## Завдання 4

Знайти кількість продуктів, ціна яких знаходиться в межах від 20 до 100.

SELECT COUNT(*) AS products_count
FROM products
WHERE price BETWEEN 20 AND 100;

<img width="1108" height="543" alt="p4_count_price_20_100" src="https://github.com/user-attachments/assets/b75ddc6f-2f42-4434-bf47-410c7c0ff6f2" />

---

## Завдання 5

Знайти кількість продуктів та середню ціну для кожного постачальника (`supplier_id`).

SELECT 
supplier_id,
COUNT(*) AS products_count,
AVG(price) AS average_price
FROM products
GROUP BY supplier_id;

<img width="1217" height="889" alt="p5_supplier_count_avg" src="https://github.com/user-attachments/assets/4fdaed71-e76e-4498-aa37-7968767abd01" />

---


## Файли репозиторію

- hw3.sql
- README.md
- скріншоти з результатами запитів
