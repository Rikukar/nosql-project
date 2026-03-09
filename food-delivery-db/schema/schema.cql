CREATE KEYSPACE food_delivery
WITH replication = {
  'class': 'NetworkTopologyStrategy',
  'datacenter1': 3
};

CREATE TABLE restaurant_by_id (
  restaurant_id UUID PRIMARY KEY,
  restaurant_name TEXT,
  city TEXT,
  cuisine TEXT,
  rating DOUBLE
);

CREATE TABLE restaurants_by_city (
  city TEXT,
  restaurant_id UUID,
  restaurant_name TEXT,
  cuisine TEXT,
  rating DOUBLE,
  PRIMARY KEY ((city), restaurant_id)
);

CREATE TABLE restaurants_by_cuisine (
  cuisine TEXT,
  restaurant_id UUID,
  restaurant_name TEXT,
  city TEXT,
  rating DOUBLE,
  PRIMARY KEY ((cuisine), restaurant_id)
);

CREATE TABLE menu_by_restaurant (
  restaurant_id UUID,
  item_id UUID,
  item_name TEXT,
  price DECIMAL,
  PRIMARY KEY ((restaurant_id), item_id)
);

CREATE TABLE reviews_by_restaurant (
  restaurant_id UUID,
  review_id UUID,
  user_id UUID,
  rating INT,
  comment TEXT,
  PRIMARY KEY ((restaurant_id), review_id)
);

CREATE TABLE user_by_id (
  user_id UUID PRIMARY KEY,
  name TEXT,
  email TEXT,
  address TEXT
);

CREATE TABLE orders_by_user (
  user_id UUID,
  order_id UUID,
  restaurant_id UUID,
  status TEXT,
  total DECIMAL,
  PRIMARY KEY ((user_id), order_id)
);

CREATE TABLE order_by_id (
  order_id UUID PRIMARY KEY,
  user_id UUID,
  restaurant_id UUID,
  status TEXT,
  total DECIMAL
);

CREATE INDEX IF NOT EXISTS idx_restaurant_rating
ON restaurant_by_id (rating);

CREATE INDEX IF NOT EXISTS idx_user_email
ON user_by_id (email);

CREATE INDEX IF NOT EXISTS idx_order_status
ON order_by_id (status);

CREATE INDEX IF NOT EXISTS idx_review_user
ON reviews_by_restaurant (user_id);
