/*
  # Add City Gleam Menu Items

  This migration adds the complete City Gleam menu including:
  1. Coffee Menu (Ice Coffee, Hot Coffee, Non-Ice Coffee)
  2. Marawi Hito Restaurant Menu (Hito, Chicken Inasal, Special Badak)
  3. Friendly Meals (Meals, Combo, Noodles)

  All items include appropriate images and pricing as specified.
*/

-- First, add new categories for City Gleam
INSERT INTO categories (id, name, icon, sort_order, active) VALUES
  ('ice-coffee', 'Ice Coffee', '🧊', 1, true),
  ('hot-coffee', 'Hot Coffee', '☕', 2, true),
  ('freshmilk', 'Freshmilk', '🥛', 3, true),
  ('hito', 'Hito', '🐟', 4, true),
  ('chicken-inal', 'Chicken Inasal', '🍗', 5, true),
  ('special-badak', 'Special Badak', '🥩', 6, true),
  ('friendly-meals', 'Friendly Meals', '🍽️', 7, true),
  ('combo', 'Combo', '🍱', 8, true),
  ('noodles', 'Noodles', '🍜', 9, true)
ON CONFLICT (id) DO NOTHING;

-- Insert Ice Coffee Items (All PHP 99)
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Strawberry Ice Coffee', 'Refreshing iced coffee with sweet strawberry flavor and cream', 99, 'ice-coffee', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Blueberry Ice Coffee', 'Cool iced coffee blended with fresh blueberry flavor', 99, 'ice-coffee', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Matcha Espresso Ice Coffee', 'Unique blend of matcha and espresso served over ice', 99, 'ice-coffee', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Spanish Latte Ice Coffee', 'Rich Spanish latte served chilled with ice', 99, 'ice-coffee', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Chocolate Ice Coffee', 'Decadent chocolate-flavored iced coffee', 99, 'ice-coffee', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Salted Caramel Ice Coffee', 'Sweet and salty iced coffee with caramel drizzle', 99, 'ice-coffee', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Caramel Ice Coffee', 'Smooth iced coffee with rich caramel flavor', 99, 'ice-coffee', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Matcha Blueberry Ice Coffee', 'Refreshing combination of matcha and blueberry over ice', 99, 'ice-coffee', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Hot Coffee Items (All PHP 59)
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Americano Hot Coffee', 'Classic Americano - strong black coffee with hot water', 59, 'hot-coffee', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Chocolate Hot Coffee', 'Rich hot coffee with chocolate flavor', 59, 'hot-coffee', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Spanish Latte Hot Coffee', 'Traditional Spanish latte served hot', 59, 'hot-coffee', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Caramel Hot Coffee', 'Warm coffee with sweet caramel flavor', 59, 'hot-coffee', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Non-Ice Coffee (Freshmilk) Items (All PHP 89)
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Blueberry Freshmilk', 'Creamy fresh milk with blueberry flavor', 89, 'freshmilk', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Matcha Blueberry Freshmilk', 'Matcha and blueberry combined in fresh milk', 89, 'freshmilk', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Chocolate Freshmilk', 'Rich chocolate flavor in fresh milk', 89, 'freshmilk', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Strawberry Freshmilk', 'Sweet strawberry flavor in fresh milk', 89, 'freshmilk', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Blueberry Freshmilk', 'Fresh milk with blueberry flavor', 89, 'freshmilk', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Hito Items
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Hito 1kg Deep Fried', 'Fresh hito fish, 1 kilogram, deep fried to perfection', 420, 'hito', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Hito 1/2kg Deep Fried', 'Fresh hito fish, half kilogram, deep fried to perfection', 210, 'hito', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Hito 1kg Grilled', 'Fresh hito fish, 1 kilogram, grilled with herbs and spices', 390, 'hito', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Hito 1/2kg Grilled', 'Fresh hito fish, half kilogram, grilled with herbs and spices', 195, 'hito', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Chicken Inasal Items
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Chicken Inasal - Unlimited Rice Wings', 'Grilled chicken wings with unlimited rice', 165, 'chicken-inal', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Chicken Inasal - Unlimited Rice Petcho', 'Grilled chicken petcho with unlimited rice', 155, 'chicken-inal', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Special Badak
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Special Badak', 'Premium badak dish with special preparation', 100, 'special-badak', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Friendly Meals
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('M1 - Rice, Egg, Lumpia', 'Rice 1 cup, Egg 1 pc, Lumpia 3 pcs', 99, 'friendly-meals', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('M2 - Rice, Pancit Canton, Siomai', 'Rice 1 cup, Pancit canton 1 pc, Siomai 3 pcs', 105, 'friendly-meals', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('M3 - Rice, Egg, Hotdog', 'Rice 1 cup, Egg 1 pc, Hotdog 2 pcs', 105, 'friendly-meals', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('M4 - Rice, Pancit Canton, Hotdog', 'Rice 1 cup, Pancit canton 1 pc, Hotdog 2 pcs', 105, 'friendly-meals', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Combo Items
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('C1 - Tempura Combo', 'Tempura 3 pcs, Chicken franks 2 pcs, Fish ball 5 pcs, Squidroll 3 pcs', 139, 'combo', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('C2 - Premium Combo', 'Tempura 4 pcs, Chicken franks 3 pcs, Siomai 5 pcs, Squidroll 3 pcs', 169, 'combo', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('C3 - Deluxe Combo', 'Tempura 5 pcs, Chicken franks 4 pcs, Fish ball 10 pcs, Squidroll 4 pcs, Lumpia 4 pcs', 239, 'combo', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('C4 - Ultimate Combo', 'Tempura 6 pcs, Chicken franks 4 pcs, Fish ball 10 pcs, Squidroll 5 pcs, Lumpia 5 pcs', 269, 'combo', false, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Noodle Items
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Samyang with Egg', 'Spicy Korean instant noodles with egg', 140, 'noodles', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  ('Ramen with Egg', 'Japanese ramen noodles with egg', 135, 'noodles', true, true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Add variations for Hito items (size options)
INSERT INTO variations (menu_item_id, name, price) VALUES
  ((SELECT id FROM menu_items WHERE name = 'Hito 1kg Deep Fried'), '1kg', 0),
  ((SELECT id FROM menu_items WHERE name = 'Hito 1/2kg Deep Fried'), '1/2kg', 0),
  ((SELECT id FROM menu_items WHERE name = 'Hito 1kg Grilled'), '1kg', 0),
  ((SELECT id FROM menu_items WHERE name = 'Hito 1/2kg Grilled'), '1/2kg', 0)
ON CONFLICT DO NOTHING;

-- Add variations for Chicken Inasal (rice type)
INSERT INTO variations (menu_item_id, name, price) VALUES
  ((SELECT id FROM menu_items WHERE name = 'Chicken Inasal - Unlimited Rice Wings'), 'Wings', 0),
  ((SELECT id FROM menu_items WHERE name = 'Chicken Inasal - Unlimited Rice Petcho'), 'Petcho', 0)
ON CONFLICT DO NOTHING;

-- Add add-ons for coffee items (optional extras)
INSERT INTO add_ons (menu_item_id, name, price, category) VALUES
  ((SELECT id FROM menu_items WHERE name = 'Strawberry Ice Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Strawberry Ice Coffee'), 'Extra Cream', 10, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Blueberry Ice Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Blueberry Ice Coffee'), 'Extra Cream', 10, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Matcha Espresso Ice Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Spanish Latte Ice Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Chocolate Ice Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Salted Caramel Ice Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Caramel Ice Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Matcha Blueberry Ice Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Americano Hot Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Chocolate Hot Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Spanish Latte Hot Coffee'), 'Extra Shot', 15, 'coffee'),
  ((SELECT id FROM menu_items WHERE name = 'Caramel Hot Coffee'), 'Extra Shot', 15, 'coffee')
ON CONFLICT DO NOTHING;
