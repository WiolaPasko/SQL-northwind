#1 Wyświetl wszystkie dane o produktach
select *
from employees;

#2 Wyświetl kod i nazwę wszystkich produktów.
select product_code,product_name
from products;

#3 Wyświetl wszystkie dane adresowe dostawców.
select*
from suppliers;

#4 Wyświetl wszystkie dane o pracownikach, którzy mieszkają w Redmond.
select*
from employees
where city = "Redmond";

#5 Wyświetl kod, nazwę i kategorię wszystkich produktów, które nie należą do kategorii: Napoje.
select product_code,product_name,category
from products
where category NOT IN ('NAPOJE');

#6 Wyświetl wszystkie dane produktów, których koszt zakupu jest większy niż 12.0000.
select*
from products
where standard_cost >12.0000;

#7 Wyświetl miasto, adres dostawy i opłatę za przewóz zamówienia, którego opłata za przewóz mieści się w przedziale 20.0000 a 78.1223.ordersorder_details
select ship_city,ship_address, shipping_fee
from orders
where shipping_fee between 20.0000 and 78.1223;

#8 Wyświetl wszystkie informacje o produktach, które mają określona minimalną liczbę zamówienia
select*
from products
where minimum_reorder_quantity is NOT NULL;

#9Wyświetl wszystkie informacje o produktach, które mają określona minimalną liczbę zamówienia i ich koszt jest mniejszy niż 10.0000.
select minimum_reorder_quantity
from products
where minimum_reorder_quantity IS NOT NULL AND standard_cost < 10.0000;

#10Wyświetl imię, nazwisko i miasto zamieszkania pracowników, których miasto zamieszkania kończy się na nd.
select last_name, first_name, city
from employees
where city LIKE '%nd';

#11Wyświetl imię, nazwisko i miasto zamieszkania pracowników, których miasto zamieszkania kończy się na nd i nie jest to Redmond.
select last_name, first_name, city
from employees
where city LIKE '%nd' AND city NOT IN ('REDMOND');

#12Wyświetl informacje o klientach, którzy nie są menadżerami.
select*
from customers
where job_title NOT IN ('Menadżer');

#13Wyświetl informacje o klientach, których imię zaczyna się na J lub nazwisko zawiera literę o i są menadżerami.
select*
from customers
where first_name like "J%" or last_name like'%o%'and job_title like ('Menadżer');

#14Wyświetl informacje o produktach, których id dostawcy równa się 4 lub 6 lub 7.
select*
from products
where supplier_ids IN (4,6,7);

#15Wyświetl imię, nazwisko i miasto zamieszkania pracowników, których miasto zamieszkania to Redmond. Wyniki posortuj od Z do A względem imienia.
select last_name,first_name,city
from employees 
where city = "Redmond" order by first_name desc;

#16Zaprezentuj wszystkie produkty posortowane od najmniejszej ceny zakupu (standard_cost).
SELECT*
FROM products order by standard_cost ASC;

#17Zaprezentuj wszystkie produkty posortowane od najmniejszej ceny zakupu (standard_cost) i największej ceny sprzedaży (list_price).
SELECT*
FROM products order by standard_cost ASC,list_price desc;