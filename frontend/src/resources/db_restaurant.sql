-- database name: "db_restaurant"

CREATE TABLE food( 
    food_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    food_name VARCHAR(255), 
    food_star VARCHAR(255),
    food_vote VARCHAR(255),
    food_price VARCHAR(255),
    food_discount VARCHAR(255),
    food_desc VARCHAR(255),
    food_status VARCHAR(255),
    food_type VARCHAR(255),
    food_category VARCHAR(255),
    food_src VARCHAR(255)
) ENGINE=INNODB;

INSERT INTO food (food_name, food_star, food_vote, food_price, food_discount, food_desc, food_status, food_type, food_category, food_src)
VALUES("Share Box with Spicy BBQ Crunchy Stars & Mentai Sauce","4.0", "365", "43000.00", "0.00", "Mentai Sauce & Crunchy", "best seller", "meat", "promosi", "promosi/promosi-1.webp"),
("Paket GOL","4.5", "678", "112000.00", "30000.00", "Nugget Crunchy & CocaCola", "best seller", "meat", "promosi", "promosi/promosi-2.webp"),
("Spicy Nugget","4.2", "780", "34500.00", "11000.00", "Nugget", "best seller", "meat", "promosi", "promosi/promosi-3.webp"),
("Paket Hantaran McD","4.1", "560", "129000.00", "20000.00", "Party", "best seller", "meat", "promosi", "promosi/promosi-4.webp"),
("Happy Meal® Chicken Burger","3.8", "554", "43000.00", "0.00", "Chicken Burger", "best seller", "meat", "happy meal", "happymeal/happymeal-1.webp"),
("Happy Meal® Ayam","4.1", "587", "43000.00", "0.00", "Ayam", "best seller", "meat", "happy meal", "happymeal/happymeal-2.webp"),
("Family Time Bertiga Happy Meal Beef Burger","4.7", "790", "89000.00", "0.00", "Family", "best seller", "meat", "family", "family/family-1.webp"),
("Family Time Bertiga Happy Meal Ayam McD","4.3", "598", "89000.00", "0.00", "Ayam", "best seller", "meat", "family", "family/family-2.webp"),
("PaMer 5","4.2", "580", "122000.00", "0.00", "Ayam", "best seller", "meat", "family", "family/family-3.webp"),
("PaMer 7","4.6", "587", "177000.00", "0.00", "Ayam", "best seller", "meat", "family", "family/family-4.webp"),
("Dark Choco McFlurry® with Crunch","4.8", "587", "16500.00", "0.00", "Ice Cream", "best seller", "drink", "dessert", "dessert/dessert-1.webp"),
("Sundae Chocolate","4.7", "589", "11000.00", "0.00", "Ice Cream", "best seller", "drink", "dessert", "dessert/dessert-2.webp"),
("Iced Coffee Italian Dolce","4.7", "549", "22000.00", "0.00", "drink", "best seller", "drink", "drink", "drink/drink-1.webp"),
("Milo","4.7", "489", "13000.00", "0.00", "drink", "best seller", "drink", "drink", "drink/drink-2.webp")
; 


CREATE TABLE user( 
    user_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    user_name VARCHAR(255), 
    user_email VARCHAR(255),
    user_phone VARCHAR(255),
    user_password VARCHAR(255),
    user_birth VARCHAR(255),
    user_gender VARCHAR(255)
) ENGINE=INNODB;


CREATE TABLE cart (
  user_id INT,
  food_id INT,
  item_qty INT,
  primary key (user_id, food_id)
);


CREATE TABLE booktable( 
    book_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    book_name VARCHAR(255), 
    book_phone VARCHAR(255),
    book_people INT,
    book_tables INT,
    user_id INT,
    book_when VARCHAR(255),
    book_note TEXT
) ENGINE=INNODB;


CREATE TABLE billdetails (
  bill_id INT,
  food_id INT,
  item_qty INT,
  primary key (bill_id, food_id)
);

CREATE TABLE billstatus (
  bill_id INT,
  user_id INT,
  bill_phone VARCHAR(255),
  bill_address TEXT,
  bill_when VARCHAR(255),
  bill_method VARCHAR(255),
  bill_discount INT,
  bill_delivery INT,
  bill_total INT,
  bill_paid VARCHAR(255),
  bill_status INT,
  primary key (bill_id)
);