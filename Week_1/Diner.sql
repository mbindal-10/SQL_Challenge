CREATE TABLE Diner (
  'customer_id' VARCHAR(1),
  'order_date' DATE,
  'product_id' INTEGER,
  'product_name' VARCHAR(5),
  'price' INTEGER,
  'join_date' DATE);

INSERT INTO Diner
	SELECT sales.customer_id, order_date, sales.product_id, product_name, price, members.join_date
  		FROM sales
       		INNER JOIN menu ON sales.product_id = menu.product_id
            LEFT JOIN members ON members.customer_ID = sales.customer_id;

