CREATE TABLE Books(
    book_id INT primary key,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    Foreign Key (author_id) REFERENCES Authors(author_id)
);


CREATE TABLE Authors(
    author_id INT primary key,
    author_name VARCHAR(215),
);

CREATE TABLE Customers(
    customer_id INT primary key,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders(
    order_id INT primary key,
    order_date DATE,
    customer_id INT,
    Foreign Key (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
    order_detail_id INT primary key,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    Foreign Key (order_id) REFERENCES Orders(order_id),
    Foreign Key (book_id) REFERENCES Books(book_id)
);


