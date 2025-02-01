CREATE TABLE Address (
    address_id INT PRIMARY KEY,
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zipCode INT,
    country VARCHAR(50)
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(50),
    address_id INT,
    FOREIGN KEY (address_id) REFERENCES Address(address_id)
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE `Order` (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    status ENUM('Processing', 'Pending', 'Completed', 'Refunded', 'Cancelled') NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('1', '59', '2025-01-15 17:28:45', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('2', '18', '2024-11-01 00:19:07', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('3', '93', '2024-04-28 13:47:05', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('4', '62', '2024-05-03 20:17:40', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('5', '23', '2024-05-06 09:11:23', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('6', '65', '2024-07-25 10:03:49', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('7', '33', '2024-08-27 15:10:11', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('8', '10', '2024-12-13 02:37:51', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('9', '65', '2025-01-09 12:49:53', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('10', '27', '2024-12-30 19:16:42', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('11', '33', '2024-10-20 01:16:50', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('12', '6', '2024-07-15 04:56:03', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('13', '23', '2024-08-20 07:24:12', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('14', '65', '2024-08-16 15:15:27', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('15', '1', '2024-05-15 06:46:02', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('16', '5', '2024-12-09 00:57:22', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('17', '24', '2024-11-30 19:37:45', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('18', '39', '2024-08-22 14:22:14', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('19', '58', '2024-04-10 14:27:54', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('20', '41', '2024-07-18 04:15:04', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('21', '5', '2024-12-06 16:39:32', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('22', '29', '2024-02-11 13:58:56', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('23', '43', '2024-04-06 22:36:10', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('24', '33', '2024-11-01 19:58:13', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('25', '93', '2024-08-16 16:12:35', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('26', '94', '2024-04-19 07:35:51', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('27', '98', '2024-08-26 18:00:00', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('28', '60', '2024-04-22 04:09:43', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('29', '96', '2024-05-04 22:41:02', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('30', '78', '2024-06-28 00:51:29', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('31', '53', '2024-09-10 20:40:18', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('32', '48', '2024-03-19 11:55:07', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('33', '46', '2024-05-02 23:41:48', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('34', '100', '2024-12-04 15:10:34', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('35', '76', '2024-08-06 23:21:29', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('36', '39', '2024-07-06 15:36:04', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('37', '20', '2024-01-24 13:59:12', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('38', '68', '2024-03-09 20:00:47', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('39', '74', '2024-06-01 21:06:20', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('40', '28', '2024-09-24 18:31:34', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('41', '6', '2024-02-05 03:02:20', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('42', '56', '2024-11-15 14:31:47', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('43', '44', '2024-06-28 02:32:09', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('44', '83', '2024-04-09 09:05:11', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('45', '6', '2024-06-27 21:11:17', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('46', '19', '2024-05-28 18:02:14', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('47', '17', '2024-06-02 13:05:43', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('48', '58', '2024-04-01 10:23:17', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('49', '62', '2024-09-30 07:50:26', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('50', '35', '2024-04-26 00:45:44', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('51', '86', '2024-12-01 17:04:50', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('52', '79', '2024-08-01 23:21:20', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('53', '18', '2024-10-23 18:34:18', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('54', '98', '2024-06-09 04:02:51', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('55', '100', '2024-03-10 01:35:32', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('56', '1', '2024-02-28 21:11:30', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('57', '85', '2025-01-14 07:02:58', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('58', '93', '2024-02-09 01:00:36', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('59', '100', '2024-10-23 10:13:23', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('60', '51', '2024-08-17 07:01:09', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('61', '23', '2024-04-01 10:12:04', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('62', '61', '2024-10-14 18:27:56', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('63', '89', '2024-06-24 20:32:04', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('64', '75', '2024-05-01 02:58:12', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('65', '12', '2025-01-04 20:34:37', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('66', '8', '2024-01-23 05:28:11', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('67', '7', '2024-06-10 04:15:33', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('68', '76', '2024-12-05 15:56:59', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('69', '74', '2024-12-24 13:00:37', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('70', '11', '2024-11-02 20:29:21', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('71', '44', '2025-01-07 16:27:09', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('72', '31', '2024-09-18 23:35:33', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('73', '44', '2024-09-23 09:05:14', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('74', '58', '2024-01-31 01:50:17', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('75', '29', '2024-10-02 06:22:40', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('76', '54', '2024-03-11 10:04:59', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('77', '74', '2024-05-26 20:52:14', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('78', '72', '2024-11-18 02:54:08', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('79', '62', '2024-10-10 07:48:15', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('80', '60', '2024-02-03 02:44:40', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('81', '28', '2024-10-06 15:59:34', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('82', '55', '2024-03-27 23:33:33', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('83', '54', '2024-08-16 23:09:02', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('84', '68', '2024-03-05 08:52:11', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('85', '86', '2024-03-07 13:29:27', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('86', '96', '2024-05-28 13:20:18', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('87', '2', '2024-10-28 23:22:29', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('88', '31', '2024-08-10 21:40:17', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('89', '12', '2025-01-01 13:19:49', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('90', '11', '2024-09-13 17:05:32', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('91', '54', '2024-02-05 02:26:54', 'Pending');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('92', '76', '2024-10-29 09:30:41', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('93', '29', '2024-04-05 04:23:23', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('94', '62', '2024-09-20 00:26:06', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('95', '77', '2024-12-16 19:00:03', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('96', '72', '2024-12-19 08:00:20', 'Cancelled');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('97', '19', '2024-12-15 05:26:05', 'Processing');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('98', '3', '2024-01-16 05:31:15', 'Refunded');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('99', '62', '2024-04-20 05:38:25', 'Completed');
INSERT INTO `Order` (`order_id`, `customer_id`, `order_date`, `status`) VALUES ('100', '96', '2024-06-30 02:07:50', 'Cancelled');

CREATE TABLE Order_Details (
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    PRIMARY KEY (order_id),
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Inventory (
    product_id INT PRIMARY KEY,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Shipping_info (
    shipping_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    order_id INT,
    address_id INT,
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (address_id) REFERENCES Address(address_id)
);

CREATE TABLE Payment_info (
    payment_id INT PRIMARY KEY,
    order_id INT,
    card_num bigint,
    sec_num CHAR(3),  -- Changed to CHAR(3)
    exp_date DATETIME,
    pay_status ENUM('Complete', 'Failed', 'Refunded') NOT NULL,
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id)
);

SELECT* FROM shipping_info;

-- retrive total price for all products (orders that are pending or completed) bought in each month (product price * quantity) 
SELECT  date_format(o.order_date, '%m-%Y') AS month, sum(p.price * od.quantity) AS total_sales
FROM `Order` o 
JOIN order_details od ON o.order_id = od.order_id
JOIN product p ON od.product_id = p.product_id
WHERE status = 'pending' or 'Completed'
group by month
order by month 