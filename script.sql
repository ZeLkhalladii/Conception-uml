CREATE TABLE `fournisseur` (
  `id` int,
  `coast` float,
  `name` varchar(50),
  `category` varchar(50),
  `products` varchar(50),
  PRIMARY KEY (`id`)
);

CREATE TABLE `orders` (
  `order_id` int,
  `administrator_id` int,
  `shiping_date` date,
  `date_order` date,
  `status` varchar(50),
  `company_name` varchar(50),
  `tracking_number` varchar(50),
  `payement_methode` varchar(50),
  PRIMARY KEY (`order_id`)
);

CREATE TABLE `payement` (
  `with_cash` varchar(50),
  `with_card` varchar(50)
);

CREATE TABLE `products` (
  `products_id` int,
  `quantity` int,
  `unit_coast` float,
  `product_name` varchar(50),
  PRIMARY KEY (`products_id`)
);

CREATE TABLE `rayon` (
  `rayon_id` int,
  `rayon_name` varchar(50),
  `rayon_product` varchar(50),
  PRIMARY KEY (`rayon_id`)
);

CREATE TABLE `order details` (
  `order_id` int,
  `quantité` int,
  `product_id` varchar(50),
  `subtotal` float,
  `category` varchar(50),
  PRIMARY KEY (`product_id`),
  KEY `FK` (`order_id`)
);

CREATE TABLE `administration` (
  `name` int,
  `password` varchar(50),
  `localisation` varchar(50),
  `shipinginfo` varchar(50)
);
