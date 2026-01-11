SELECT pizzeria.name AS pizzeria_name -- выбираем названия пиццери и присваиваем имя выводимому столбцу
FROM person_visits -- работаем с основной таблицей посещений
JOIN person ON person_visits.person_id = person.id -- соединяем таблицу поседений с таблицей персон по ид человека получаем данные о людях
JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id -- соединяем визиты персон с таблицей меню по ид пиццерии получаем данные меню
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id -- соедняем меню с пиццериями по ид пиццерии и получаем список пиццерий
WHERE person.name = 'Dmitriy' -- фильтруем строки по имени
AND person_visits.visit_date = '2022-01-08' -- по дате
AND menu.price < 800 -- по цене
/*найдем для Димы пиццерию где в указанную дату он может
поесть пиццу по цене дешевле 800 руб*/