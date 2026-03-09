-- Q1: Get restaurants by city
SELECT * FROM restaurants_by_city
WHERE city = 'Berlin';

-- Q2: Get restaurants by cuisine
SELECT * FROM restaurants_by_cuisine
WHERE cuisine = 'Italian';

-- Q3: Get menu items of a restaurant
SELECT * FROM menu_by_restaurant
WHERE restaurant_id = ?;

-- Q4: Get restaurant details by ID
SELECT * FROM restaurant_by_id
WHERE restaurant_id = ?;

-- Q5: Get reviews of a restaurant
SELECT * FROM reviews_by_restaurant
WHERE restaurant_id = ?;

-- Q6: Get orders of a user
SELECT * FROM orders_by_user
WHERE user_id = ?;