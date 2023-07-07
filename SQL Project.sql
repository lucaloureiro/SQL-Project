CREATE DATABASE IF NOT EXISTS malugelato


CREATE TABLE IF NOT EXISTS `malugelato`.`costumer` (
  `COSTUMER_ID` INTEGER NOT NULL DEFAULT 0,
  `FIRSTNAME` varchar(20) NOT NULL,
  `LASTNAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `MOBILE` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(40) DEFAULT NULL,
  `ZIPCODE` varchar(12) DEFAULT NULL,
  `CITY` varchar(30) NOT NULL,
    PRIMARY KEY (`COSTUMER_ID`)
);

CREATE TABLE IF NOT EXISTS `malugelato`.`order` (
  `ORDER_ID` INTEGER NOT NULL DEFAULT 0,
  `ORDERDATE` datetime NOT NULL,
  `TOTALAMOUNT` decimal(4,2) NOT NULL,
    PRIMARY KEY (`ORDER_ID`)
);

CREATE TABLE IF NOT EXISTS `malugelato`.`customerfeedback` (
  `FEEDBACK_ID` INTEGER NOT NULL DEFAULT 0,
  `RATING` integer NOT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`FEEDBACK_ID`)
);

CREATE TABLE IF NOT EXISTS `malugelato`.`orderdetails` (
  `ORDERDETAIL_ID` INTEGER NOT NULL DEFAULT 0,
  `QUANTITY` integer NOT NULL,
  `UNITPRICE` decimal(4,2) NOT NULL,
    PRIMARY KEY (`ORDERDETAIL_ID`)
);

CREATE TABLE IF NOT EXISTS `malugelato`.`product` (
  `PRODUCT_ID` INTEGER NOT NULL DEFAULT 0,
  `UNITPRICE` decimal(4,2) NOT NULL,
    PRIMARY KEY (`PRODUCT_ID`)
);

CREATE TABLE IF NOT EXISTS `malugelato`.`flavors` (
  `FLAVOR_ID` INTEGER NOT NULL DEFAULT 0,
  `DESCRIPTION` varchar(40) NOT NULL,
    PRIMARY KEY (`FLAVOR_ID`)
);

CREATE TABLE IF NOT EXISTS `malugelato`.`packs` (
  `PACK_ID` INTEGER NOT NULL DEFAULT 0,
  `DESCRIPTION` varchar(40) NOT NULL,
    PRIMARY KEY (`PACK_ID`)
);

CREATE TABLE IF NOT EXISTS `malugelato`.`sizes` (
  `SIZE_ID` INTEGER NOT NULL DEFAULT 0,
  `DESCRIPTION` varchar(40) NOT NULL,
    PRIMARY KEY (`SIZE_ID`)
);

CREATE TABLE IF NOT EXISTS `malugelato`.`shops` (
  `SHOP_ID` INTEGER NOT NULL DEFAULT 0,
  `SHOPNAME` varchar(40) NOT NULL,
  `ADDRESS` varchar(40) DEFAULT NULL,
  `CITY` varchar(30) NOT NULL,
    PRIMARY KEY (`SHOP_ID`)
);

CREATE TABLE IF NOT EXISTS `malugelato`.`staff` (
  `STAFF_ID` INTEGER NOT NULL DEFAULT 0,
  `FIRSTNAME` varchar(20) NOT NULL,
  `LASTNAME` varchar(25) NOT NULL,
  `MOBILE` varchar(20) DEFAULT NULL,
  `JOBTITTLE` varchar(40) NOT NULL,
  `HIREDATE` date NOT NULL,
    PRIMARY KEY (`STAFF_ID`)
);

CREATE TABLE IF NOT EXISTS `malugelato`.`logtable` (
    `log_ID` INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `log_datetime` DATETIME NOT NULL,
    `log_user` VARCHAR(63),
    `log_EV` VARCHAR(15),
    `log_MSG` VARCHAR(255)
    );




INSERT INTO `costumer` (`COSTUMER_ID`, `FIRSTNAME`, `LASTNAME`, `EMAIL`, `MOBILE`, `ADDRESS`, `ZIPCODE`, `CITY`) VALUES
('1', 'Maria', 'da Silva', 'maria_dasilva@gmail.com', '914-345-6789', 'Rua das Flores, nº 5', '1200-856', 'Lisboa'),
('2', 'Joao', 'Santos', 'jsantos@gmail.com', '910-123-4567', 'Avenida da Republica, nº 10', '1250-093', 'Lisboa'),
('3', 'Ana', 'Martins', 'a_martins@gmail.com', '965-987-6543', 'Rua dos Anjos, nº 15', '1100-013', 'Lisboa'),
('4', 'Pedro', 'Rodrigues', 'pedro.r@gmail.com', '917-890-1234', 'Rua da Paz, nº 20', '1300-345', 'Lisboa'),
('5', 'Sofia', 'Gonçalves', 'sofiag@gmail.com', '986-543-2109', 'Avenida dos Aliados, nº 25', '1000-123', 'Lisboa'),
('6', 'Carlos', 'Ferreira', 'cf2000@gmail.com', '963-210-9876', 'Rua dos Clérigos, nº 30', '1200-678', 'Lisboa'),
('7', 'Marta', 'Fonseca', 'marta.fonseca@gmail.com', '934-678-9012', 'Rua da Alegria, nº 35', '1050-098', 'Lisboa'),
('8', 'Miguel', 'Pereira', 'miguel2346@hotmail.com', '913-456-7890', 'Avenida da Liberdade, nº 40', '1200-543', 'Lisboa'),
('9', 'Luisa', 'Costa', 'luisa.costa@gmail.com', '956-789-0123', 'Rua das Estrelas, nº 5', '4100-345', 'Porto'),
('10', 'Francisco', 'Sousa', 'fs33@gmail.com', '987-654-3210', 'Avenida dos Aliados, nº 10', '4000-123', 'Porto'),
('11', 'Catarina', 'Martins', 'catarina34@gmail.com', '927-890-1234', 'Rua do Porto, nº 15', '4200-567', 'Porto'),
('12', 'Ricardo', 'Alves', 'ricardo.al@gmail.com', '964-321-0987', 'Rua da Boavista, nº 20', '4300-987', 'Porto'),
('13', 'Beatriz', 'Pinto', 'b_pinto@gmail.com', '982-109-8765', 'Avenida dos Clérigos, nº 25', '4000-678', 'Porto'),
('14', 'José ', 'Pereira', 'josepereira@gmail.com', '910-987-6543', 'Rua do Bonfim, nº 30', '4100-123', 'Porto'),
('15', 'Inês ', 'Gomes', 'i.gomes@hotmail.com', '938-901-2345', 'Rua da Ponte, nº 5', '4700-156', 'Braga'),
('16', 'Fernando', 'Monteiro', 'fermonteiro@hotmail.com', '967-890-1234', 'Avenida da Paz, nº 10', '4700-345', 'Braga'),
('17', 'Gonçalo', 'Silva', 'silva1985@gmail.com', '901-234-5678', 'Rua dos Remédios, nº 15', '4710-123', 'Braga'),
('18', 'Raquel', 'Ferreira', 'raquelferreira@gmail.com', '902-987-6543', 'Rua da Pedra, nº 20', '4720-987', 'Braga'),
('19', 'Rita', 'Ribeiro', 'rita_ribeiro@gmail.com', '954-321-0987', 'Avenida do Rosário, nº 25', '4700-678', 'Braga'),
('20', 'Marcelo', 'Almeida', 'marcelo1980@gmail.com', '913-456-7890', 'Rua de São João, nº 30', '4730-987', 'Braga'),
('21', 'Luís ', 'Carvalho', 'luisc.2006@hotmail.com', '921-543-2109', 'Rua da Universidade, nº 5', '3000-456', 'Coimbra'),
('22', 'Manuela', 'Pereira', 'manu.pereira@gmail.com', '973-210-9876', 'Avenida da República, nº 10', '3000-123', 'Coimbra'),
('23', 'Gabriela', 'Ferreira', 'gabi_ferreira@gmail.com', '984-678-9012', 'Rua da Alfândega, nº 15', '3000-987', 'Coimbra'),
('24', 'José ', 'Lopes', 'jlopes@gmail.com', '915-987-6543', 'Rua da Portagem, nº 20', '3000-678', 'Coimbra'),
('25', 'Isabel', 'Monteiro', 'isa333@gmail.com', '926-789-0123', 'Avenida da Mouzinho, nº 25', '3000-345', 'Coimbra'),
('26', 'Joana', 'Fonseca', 'jfonseca45@hotmail.com', '930-987-6543', 'Rua do Comércio, nº 5', '8000-987', 'Faro'),
('27', 'Pedro', 'Silva', 'pedrosilva123@hotmail.com', '948-901-2345', 'Avenida da República, nº 10', '8000-456', 'Faro'),
('28', 'Susana', 'Almeida', 'susana_a@hotmail.com', '962-987-6543', 'Rua da Sé, nº 15', '8100-123', 'Faro'),
('29', 'Carolina', 'Santos', 'caro_santos2000@gmail.com', '935-789-0123', 'Rua de São Francisco, nº 20', '8200-678', 'Faro'),
('30', 'Jorge', 'Martins', 'j.martins03@hotmail.com', '919-654-3210', 'Avenida dos Descobrimentos, nº 25', '8300-345', 'Faro');


INSERT INTO `shops` (`SHOP_ID`, `SHOPNAME`, `ADDRESS`, `CITY`) VALUES
('1', 'Malu Liberdade', 'Avenida da Liberdade, nº 20', 'Lisboa'),
('2', 'Malu Boavista', 'Rua da Boavista, nº 40', 'Porto'),
('3', 'Malu Pedra', 'Rua da Pedra, nº 35', 'Braga'),
('4', 'Malu Universidade', 'Rua da Universidade, nº 15', 'Coimbra'),
('5', 'Malu Comercio', 'Rua do Comércio, nº 45', 'Faro');


INSERT INTO `order` (`ORDER_ID`, `ORDERDATE`, `TOTALAMOUNT`, `costumer_COSTUMER_ID`, `shops_SHOP_ID`) VALUES
('1', '2019-09-05 12:31:40', '6.00', '10', '2'),
('2', '2020-11-17 13:45:20', '15.00', '6', '1'),
('3', '2021-02-20 14:12:00', '9.00', '19', '3'),
('4', '2021-07-12 15:23:50', '18.00', '11', '2'),
('5', '2022-04-15 16:56:20', '30.00', '28', '5'),
('6', '2019-10-29 17:34:10', '3.00', '20', '3'),
('7', '2020-12-01 18:12:30', '24.00', '16', '3'),
('8', '2021-03-25 19:45:00', '3.00', '25', '4'),
('9', '2021-08-20 20:23:40', '15.00', '27', '5'),
('10', '2022-05-12 21:12:20', '12.00', '18', '3'),
('11', '2019-11-17 12:56:40', '6.00', '4', '1'),
('12', '2020-01-20 13:23:50', '12.00', '9', '2'),
('13', '2021-04-12 14:45:30', '24.00', '17', '3'),
('14', '2021-09-15 15:12:10', '18.00', '21', '4'),
('15', '2022-06-20 16:34:50', '12.00', '12', '2'),
('16', '2019-12-01 17:23:40', '36.00', '3', '1'),
('17', '2020-02-17 18:45:20', '9.00', '15', '3'),
('18', '2021-05-20 19:12:00', '6.00', '26', '5'),
('19', '2021-10-12 20:56:40', '12.00', '24', '4'),
('20', '2022-07-15 21:34:30', '45.00', '7', '1'),
('21', '2019-12-29 12:12:10', '6.00', '5', '1'),
('22', '2020-03-25 13:45:00', '12.00', '8', '1'),
('23', '2021-06-20 14:23:40', '30.00', '14', '2'),
('24', '2021-11-12 15:45:20', '12.00', '22', '4'),
('25', '2022-08-15 16:12:00', '24.00', '29', '5'),
('26', '2019-01-20 17:56:40', '3.00', '23', '4'),
('27', '2019-01-20 17:56:40', '48.00', '2', '1'),
('28', '2021-09-15 19:45:30', '6.00', '30', '5'),
('29', '2022-06-20 20:12:10', '12.00', '1', '1'),
('30', '2019-02-17 21:34:50', '9.00', '13', '2');


INSERT INTO `staff` (`STAFF_ID`, `FIRSTNAME`, `LASTNAME`, `MOBILE`, `JOBTITTLE`, `HIREDATE`, `shops_SHOP_ID`) VALUES
('1', 'Ana', 'Silva', '914-325-6889', 'Manager', '2017-07-15', '1'),
('2', 'Joao', 'Oliveira', '924-323-5889', 'Gelato Master', '2018-01-20', '1'),
('3', 'Maria', 'Santos', '968-345-8875', 'Waiter', '2020-09-01', '1'),
('4', 'Jose', 'Rodrigues', '954-325-0000', 'Waiter', '2018-11-30', '1'),
('5', 'Manuela', 'Pinto', '973-324-6839', 'Manager', '2018-01-25', '2'),
('6', 'Carlos', 'Ferreira', '974-333-5769', 'Gelato Master', '2019-07-20', '2'),
('7', 'Marta', 'Martins', '993-383-7575', 'Waiter', '2017-12-01', '2'),
('8', 'Teresa', 'Costa', '934-852-0362', 'Waiter', '2020-03-22', '2'),
('9', 'Luis', 'Martins', '992-927-6839', 'Manager', '2017-04-12', '3'),
('10', 'Gabriel', 'Pereira', '923-443-5769', 'Gelato Master', '2017-02-23', '3'),
('11', 'Rafaela', 'Gomes', '985-383-8775', 'Waiter', '2020-11-06', '3'),
('12', 'Armando', 'Carvalho', '927-849-0762', 'Waiter', '2021-10-19', '3'),
('13', 'Sofia', 'Costa', '942-927-6539', 'Manager', '2018-05-10', '4'),
('14', 'Eduardo', 'Sousa', '993-303-5769', 'Gelato Master', '2017-03-20', '4'),
('15', 'Ines', 'Alves', '932-383-8005', 'Waiter', '2021-12-07', '4'),
('16', 'Filipa', 'Fernandes', '996-800-0762', 'Waiter', '2019-12-19', '4'),
('17', 'Madalena', 'Neves', '900-347-6539', 'Manager', '2018-10-17', '5'),
('18', 'Beatriz', 'Almeida', '942-933-5769', 'Gelato Master', '2020-08-04', '5'),
('19', 'Laura', 'Marques', '984-383-8025', 'Waiter', '2017-02-23', '5'),
('20', 'Ricardo', 'Nogueira', '929-230-5362', 'Waiter', '2018-09-11', '5');


INSERT INTO `customerfeedback` (`FEEDBACK_ID`, `RATING`, `COMMENTS`, `order_ORDER_ID`, `order_costumer_COSTUMER_ID`, `order_shops_SHOP_ID`) VALUES
('1', '4', 'The ice cream was so creamy and delicious! Definitely coming back for more', '1', '10', '2'),
('2', '5', 'Their flavors are so unique and yummy', '2', '6', '1'),
('3', '5', 'I cant believe how fresh and tasty their ice cream is. Highly recommend!', '3', '19', '3'),
('4', '3', 'Slow service', '4', '11', '2'),
('7', '5', 'The staff was super friendly and helpful in choosing the perfect flavor for me', '7', '16', '3'),
('8', '2', 'I had better gelato', '8', '25', '4'),
('10', '4', 'Ive never had such amazing ice cream. The salted caramel is to die for', '10', '18', '3'),
('13', '5', 'This is the best ice cream shop in town. I always stop by when Im in the area', '13', '17', '3'),
('14', '5', 'I cant get over how creamy and smooth their ice cream is. Worth every penny!', '14', '21', '4'),
('17', '5', 'I love supporting local businesses and this ice cream shop is definitely worth it.', '17', '15', '3'),
('18', '5', 'Their ice cream is the perfect consistency, not too hard and not too soft. Perfection!', '18', '26', '5'),
('19', '3', 'They flavor I wanted was not available', '19', '24', '4'),
('20', '4', 'I always get the cookies and cream and it never disappoints. So delicious!', '20', '7', '1'),
('24', '5', 'The presentation of their ice cream is almost too pretty to eat, but it tastes even better than it looks.', '24', '22', '4'),
('26', '5', 'Im not usually a fan of ice cream, but this place has converted me. So good!', '26', '23', '4'),
('30', '5', 'I took my kids here and they loved it. The staff was great with them and the ice cream was a hit.', '30', '13', '2');


INSERT INTO `flavors` (`FLAVOR_ID`, `DESCRIPTION`) VALUES
('1', 'Vanilla'),
('2', 'Chocolate'),
('3', 'Strawberry'),
('4', 'Cookies and Cream'),
('5', 'Stracciatella'),
('6', 'Salted Caramel');


INSERT INTO `packs` (`PACK_ID`, `DESCRIPTION`) VALUES
('1', 'Cup'),
('2', 'Cone');


INSERT INTO `sizes` (`SIZE_ID`, `DESCRIPTION`) VALUES
('1', 'Small'),
('2', 'Big');


INSERT INTO `product` (`PRODUCT_ID`, `UNITPRICE`, `flavors_FLAVOR_ID`, `packs_PACK_ID`, `sizes_SIZE_ID`) VALUES
('1', '3.00', '1', '1', '1'),
('2', '6.00', '1', '1', '2'),
('3', '3.00', '1', '2', '1'),
('4', '6.00', '1', '2', '2'),
('5', '3.00', '2', '1', '1'),
('6', '6.00', '2', '1', '2'),
('7', '3.00', '2', '2', '1'),
('8', '6.00', '2', '2', '2'),
('9', '3.00', '3', '1', '1'),
('10', '6.00', '3', '1', '2'),
('11', '3.00', '3', '2', '1'),
('12', '6.00', '3', '2', '2'),
('13', '3.00', '4', '1', '1'),
('14', '6.00', '4', '1', '2'),
('15', '3.00', '4', '2', '1'),
('16', '6.00', '4', '2', '2'),
('17', '3.00', '5', '1', '1'),
('18', '6.00', '5', '1', '2'),
('19', '3.00', '5', '2', '1'),
('20', '6.00', '5', '2', '2'),
('21', '3.00', '6', '1', '1'),
('22', '6.00', '6', '1', '2'),
('23', '3.00', '6', '2', '1'),
('24', '6.00', '6', '2', '2');


INSERT INTO `orderdetails` (`ORDERDETAIL_ID`, `QUANTITY`, `UNITPRICE`, `order_ORDER_ID`, `product_PRODUCT_ID`) VALUES
('1', '2', '3.00', '1', '21'),
('2', '3', '3.00', '2', '19'),
('3', '1', '6.00', '2', '10'),
('4', '1', '3.00', '3', '7'),
('5', '1', '6.00', '3', '24'),
('6', '3', '6.00', '4', '8'),
('7', '10', '3.00', '5', '11'),
('8', '1', '3.00', '6', '1'),
('9', '1', '6.00', '7', '2'),
('10', '1', '6.00', '7', '6'),
('11', '1', '6.00', '7', '18'),
('12', '1', '6.00', '7', '24'),
('13', '1', '3.00', '8', '21'),
('14', '5', '3.00', '9', '23'),
('15', '2', '6.00', '10', '4'),
('16', '1', '6.00', '11', '2'),
('17', '1', '6.00', '12', '22'),
('18', '1', '6.00', '12', '14'),
('19', '8', '3.00', '13', '1'),
('20', '3', '6.00', '14', '6'),
('21', '2', '6.00', '15', '16'),
('22', '12', '3.00', '16', '3'),
('23', '1', '3.00', '17', '13'),
('24', '1', '3.00', '17', '5'),
('25', '1', '3.00', '17', '19'),
('26', '1', '6.00', '18', '10'),
('27', '4', '3.00', '19', '15'),
('28', '15', '3.00', '20', '19'),
('29', '1', '6.00', '21', '20'),
('30', '2', '6.00', '22', '2'),
('31', '1', '6.00', '23', '12'),
('32', '1', '6.00', '23', '6'),
('33', '1', '6.00', '23', '8'),
('34', '1', '6.00', '23', '18'),
('35', '1', '6.00', '23', '22'),
('36', '2', '6.00', '24', '2'),
('37', '4', '6.00', '25', '4'),
('38', '1', '3.00', '26', '1'),
('39', '8', '6.00', '27', '16'),
('40', '1', '6.00', '28', '14'),
('41', '1', '6.00', '29', '2'),
('42', '1', '6.00', '29', '14'),
('43', '1', '3.00', '30', '1'),
('44', '1', '3.00', '30', '13'),
('45', '1', '3.00', '30', '17');





