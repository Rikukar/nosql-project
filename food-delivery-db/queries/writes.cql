-- Q7: Create a new order
INSERT INTO order_by_id (order_id, user_id, restaurant_id, status, total)
VALUES (?, ?, ?, 'CREATED', 29.99);

-- Q8: Update order status
UPDATE order_by_id
SET status = 'DELIVERED'
WHERE order_id = ?;

-- Q9: Add a restaurant review
INSERT INTO reviews_by_restaurant
(restaurant_id, review_id, user_id, rating, comment)
VALUES (?, ?, ?, 5, 'Excellent food and fast delivery');

-- Q10: Modify user profile data
UPDATE user_by_id
SET address = 'New Address 123'
WHERE user_id = ?;