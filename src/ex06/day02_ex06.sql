SELECT menu.pizza_name, -- выберем название пиццы из таблицы меню
    pizzeria.name AS pizzeria_name -- выберем название пиццерии и присвоим столбцу для вывода название имя_пицц
FROM person_order -- работаем с основной таблицей откуда возьмем информацию
JOIN menu ON person_order.menu_id = menu.id -- соединим заказы с таблицей меню по ид меню 
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id -- соединим меню с таблицей пиццерий по ид пиццерий
JOIN person ON person_order.person_id = person.id -- соединим заказы с таблицей людей по ид человека
WHERE person.name IN ('Anna', 'Denis') -- отфильтруем заказы для Анны и Дениса
ORDER BY pizza_name, pizzeria_name; -- отсортируем результат по названию пиццы и пиццерии по возрастанию
/*чтобы получить списко пицц, заказанных Анной и Денисом, и
указать пиццерии где они были заказаны*/