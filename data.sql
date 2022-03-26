/* create tables of attributes */
CREATE TABLE Property(
	address VARCHAR(100) NOT NULL,
	ownerName VARCHAR(40),
	price INT,
	PRIMARY KEY(address)
);

CREATE TABLE House(
	address VARCHAR(100) NOT NULL,
	ownerName VARCHAR(40),
	price INT,
	rooms INT,
	balconies INT,
	size INT,
	FOREIGN KEY(address) REFERENCES Property(address)
);

CREATE TABLE Workplace(
	address VARCHAR(100) NOT NULL,
	ownerName VARCHAR(40),
	price INT,
	type CHAR(15),
	size INT,
	FOREIGN KEY(address) REFERENCES Property(address)
);

CREATE TABLE Agent(
	agentId INT NOT NULL,
	name VARCHAR(40),
	phone CHAR(11),
	startedDate DATE,
	PRIMARY KEY(agentId)
);

CREATE TABLE Listing(
	address VARCHAR(100),
	agentId INT,
	RENumber INT PRIMARY KEY,
	listedDate DATE,
	FOREIGN KEY(agentId) REFERENCES Agent(agentId),
	FOREIGN KEY(address) REFERENCES Property(address)
);

CREATE TABLE Customer(
	id INT NOT NULL,
	name VARCHAR(40),
	phone CHAR(11),
	propertyType CHAR(15),
	rooms INT,
	balconies INT,
	WorkplaceType CHAR(15),
	minPreferredPrice INT,
	maxPreferredPrice INT,
	PRIMARY KEY(id)
);

CREATE TABLE Work_With(
	CustomerId INT,
	agentId INT,
	FOREIGN KEY(CustomerId) REFERENCES Customer(id),
	FOREIGN KEY(agentId) REFERENCES Agent(agentId)
);

/* insert records to each tables */

/* 20 records into Property */
INSERT INTO Property
VALUES('Fatih Mahallesi 523. sokak no: 3/7', 'Cansel Gun', 245900);

INSERT INTO Property
VALUES('Fatih Mahallesi Aslan sokak no: 13/1', 'Muzaffer Kaya', 924500);
/* primary key constraint: if i put 'Fatih Mahallesi 523. sokak no: 3/7' in address again, there will be an error about primary key. */

INSERT INTO Property
VALUES('Merkez Mahallesi Ataturk Caddesi no: 45/3', 'Can Asil', 120500);

INSERT INTO Property
VALUES('Yunus Mahallesi 1077. sokak no: 6/15', 'Gonul Bayraktar', 990000);

INSERT INTO Property
VALUES('Fatih Mahallesi 523. sokak no: 3/9', 'Cansel Gun', 160000);

INSERT INTO Property
VALUES('Gunes Mahallesi Cihan sokak no: 22/9', 'Julide Ersoz', 730000);

INSERT INTO Property
VALUES('Merkez Mahallesi Kadioglu sokak no: 3/7', 'Taha Taş', 210000);

INSERT INTO Property
VALUES('Kuzey Mahallesi Mehtap sokak no: 11/14', 'Erkan Can', 385000);

INSERT INTO Property
VALUES('Yunus Mahallesi 1145. sokak no: 23/17', 'Sule Razi', 1050000);

INSERT INTO Property
VALUES('Merkez Mahallesi Sehit sokak no: 3/1', 'Furkan Taha Ozen', 103000);

INSERT INTO Property 
VALUES('Merkez Mahallesi Koca sokak no: 3/A', 'Mustafa Aydin', 710800);

INSERT INTO Property
VALUES('Merkez Mahallesi Deniz sokak no: 14/A', 'Tuna Esmersoy', 220000);

INSERT INTO Property
VALUES('Merkez Mahallesi Taseli sokak no: 21/B', 'Kamuran Dinc', 365900);

INSERT INTO Property
VALUES('Fatih Mahallesi Tunc sokak no: 13', 'Meral Sancak', 1150000);

INSERT INTO Property
VALUES('Yunus Mahallesi 1099. sokak no: 7/A', 'Omer Tarakci', 130000);

INSERT INTO Property 
VALUES('Gunes Mahallesi Sinan sokak no: 23/B', 'Faruk Kul', 750000);

INSERT INTO Property
VALUES('Gunes Mahallesi Kalem sokak no: 4/A', 'Berat Albay', 211900);

INSERT INTO Property
VALUES('Merkez Mahallesi Gundogdu sokak no: 46/B', 'Kemal Satirci', 366850);

INSERT INTO Property
VALUES('Fatih Mahallesi Kızıl sokak no: 11/B', 'Berkan Akpinar', 12300000);

INSERT INTO Property
VALUES('Kuzey Mahallesi Remzi sokak no: 17/A', 'Mert Kiyak', 800000);

/* 10 records into House */
INSERT INTO House
VALUES('Fatih Mahallesi 523. sokak no: 3/7', 'Cansel Gun', 245900, 3, 1, 196);
/* foreign key constraint: if there is no log about this address in property table, code will give me an error about foreign key.*/

INSERT INTO House
VALUES('Fatih Mahallesi Aslan sokak no: 13/1', 'Muzaffer Kaya', 924500, 4, 2, 203);

INSERT INTO House
VALUES('Merkez Mahallesi Ataturk Caddesi no: 45/3', 'Can Asil', 120500, 2, 1, 180);

INSERT INTO House
VALUES('Yunus Mahallesi 1077. sokak no: 6/15', 'Gonul Bayraktar', 990000, 5, 2, 401);

INSERT INTO House
VALUES('Fatih Mahallesi 523. sokak no: 3/9', 'Cansel Gun', 160000, 3, 2, 102);

INSERT INTO House
VALUES('Gunes Mahallesi Cihan sokak no: 22/9', 'Julide Ersoz', 730000, 4, 2, 196);

INSERT INTO House
VALUES('Merkez Mahallesi Kadioglu sokak no: 3/7', 'Taha Taş', 210000, 3, 1, 203);

INSERT INTO House
VALUES('Kuzey Mahallesi Mehtap sokak no: 11/14', 'Erkan Can', 385000, 3, 2, 180);

INSERT INTO House
VALUES('Yunus Mahallesi 1145. sokak no: 23/17', 'Sule Razi', 1050000, 5, 3, 401);

INSERT INTO House
VALUES('Merkez Mahallesi Sehit sokak no: 3/1', 'Furkan Ozen', 103000, 1, 0, 70);

/* 10 records into Workplace */
INSERT INTO Workplace 
VALUES('Merkez Mahallesi Koca sokak no: 3/A', 'Mustafa Aydin', 710800, 'office', 467);

INSERT INTO Workplace
VALUES('Merkez Mahallesi Deniz sokak no: 14/A', 'Tuna Esmersoy', 220000, 'gas station', 245);

INSERT INTO Workplace
VALUES('Merkez Mahallesi Taseli sokak no: 21/B', 'Kamuran Dinc', 365900, 'office', 356);

INSERT INTO Workplace
VALUES('Fatih Mahallesi Tunc sokak no: 13', 'Meral Sancak', 1150000, 'office', 670);

INSERT INTO Workplace
VALUES('Yunus Mahallesi 1099. sokak no: 7/A', 'Omer Tarakci', 130000, 'store', 128);

INSERT INTO Workplace 
VALUES('Gunes Mahallesi Sinan sokak no: 23/B', 'Faruk Kul', 750000, 'office', 467);

INSERT INTO Workplace
VALUES('Gunes Mahallesi Kalem sokak no: 4/A', 'Berat Albay', 211900, 'gas station', 224);

INSERT INTO Workplace
VALUES('Merkez Mahallesi Gundogdu sokak no: 46/B', 'Kemal Satirci', 366850, 'store', 400);

INSERT INTO Workplace
VALUES('Fatih Mahallesi Kızıl sokak no: 11/B', 'Berkan Akpinar', 12300000, 'office', 735);

INSERT INTO Workplace
VALUES('Kuzey Mahallesi Remzi sokak no: 17/A', 'Mert Kiyak', 800000, 'office', 510);


/* 10 records into Agent */
INSERT INTO Agent
VALUES(100, 'Ferat Yorulmaz', '05369874563', '2015-06-13');

INSERT INTO Agent
VALUES(112, 'Alp Erogul', '05425986314', '2016-02-06');

INSERT INTO Agent
VALUES(123, 'Bilge Cetin', '05064875456', '2019-12-15');

INSERT INTO Agent
VALUES(145, 'Mansur Yildirim', '05329741576', '2014-04-19');

INSERT INTO Agent
VALUES(168, 'Hazal Basak', '05354781101', '2017-09-25');

INSERT INTO Agent
VALUES(189, 'Nilcan Akcay', '05062024588', '2017-09-25');

INSERT INTO Agent
VALUES(201, 'Azra Kara', '05459314042', '2017-09-25');

INSERT INTO Agent
VALUES(223, 'Buse Gunes', '05339442213', '2020-11-01');

INSERT INTO Agent
VALUES(267, 'Tuncay Celikten', '05075578067', '2021-01-04');

INSERT INTO Agent
VALUES(310, 'Rozerin Camlica', '05354213159', '2018-08-15');

/* 10 records into Listing */
INSERT INTO Listing
VALUES('Fatih Mahallesi 523. sokak no: 3/7', 100, 4108, '2021-02-04');

INSERT INTO Listing
VALUES('Fatih Mahallesi Aslan sokak no: 13/1', 112, 4088, '2021-05-06');

INSERT INTO Listing
VALUES('Merkez Mahallesi Ataturk Caddesi no: 45/3', 123, 4064, '2021-07-04');

INSERT INTO Listing
VALUES('Yunus Mahallesi 1077. sokak no: 6/15', 145, 4153, '2021-02-09');

INSERT INTO Listing
VALUES('Fatih Mahallesi 523. sokak no: 3/9', 168, 4021, '2021-02-19');

INSERT INTO Listing
VALUES('Gunes Mahallesi Cihan sokak no: 22/9', 189, 4040, '2021-06-06');

INSERT INTO Listing
VALUES('Merkez Mahallesi Kadioglu sokak no: 3/7', 201, 4114, '2021-05-25');

INSERT INTO Listing
VALUES('Kuzey Mahallesi Mehtap sokak no: 11/14', 223, 4075, '2021-11-04');

INSERT INTO Listing
VALUES('Yunus Mahallesi 1145. sokak no: 23/17', 267, 4003, '2021-10-01');

INSERT INTO Listing
VALUES('Merkez Mahallesi Sehit sokak no: 3/1', 310, 4034, '2021-09-05');

/* 10 records into Customer */
INSERT INTO Customer
VALUES(941, 'Eren Sahin', '05064587963', 'not applied', 0, 0, 'gas station', 100000, 635000);

INSERT INTO Customer
VALUES(455, 'Sevda Kanmaz', '05356781234', 'house', 3, 1, 'not applied', 100000, 400000);

INSERT INTO Customer
VALUES(636, 'Berk Coskun', '05064782421', 'house', 4, 2, 'not applied', 300000, 635000);

INSERT INTO Customer
VALUES(469, 'Selen Kuluc', '05424784103', 'house', 5, 2, 'not applied', 700000, 1000000);

INSERT INTO Customer
VALUES(197, 'Yakup Donen', '05354789245', 'house', 5, 2, 'not applied', 400000, 900000);

INSERT INTO Customer
VALUES(515, 'Azer Taskin', '05457574019', 'not applied', 0, 0, 'office', 300000, 790000);

INSERT INTO Customer
VALUES(366, 'Cumali Recber', '05359724878', 'house', 3, 2, 'not applied', 100000, 350000);

INSERT INTO Customer
VALUES(520, 'Huseyin Mert', '05327878101', 'not applied', 0, 0, 'store', 700000, 1200000);

INSERT INTO Customer
VALUES(108, 'Guzide Bostan', '0542102204', 'house', 4, 2, 'not applied', 500000, 800000);

INSERT INTO Customer
VALUES(200, 'Onur Baran', '05064571203', 'not applied', 0, 0, 'office', 100000, 900000);

INSERT INTO Customer
VALUES(909, 'Rasim Ozan', '05361967548', 'not applied', 0, 0, 'office', 450000, 750000);

/* 10 records into Works_With */
INSERT INTO Work_With
VALUES(941, 100);

INSERT INTO Work_With
VALUES(455, 145);

INSERT INTO Work_With
VALUES(636, 123);

INSERT INTO Work_With
VALUES(469, 168);

INSERT INTO Work_With
VALUES(197, 189);

INSERT INTO Work_With
VALUES(366, 223);

INSERT INTO Work_With
VALUES(520, 310);

INSERT INTO Work_With
VALUES(108, 267);

INSERT INTO Work_With
VALUES(200, 201);

INSERT INTO Work_With
VALUES(909, 112);

/* Writing and describing SQL queries */
/* 1st query returns the address and price of the house from the filtered values 
(min 4 rooms, min 2 balconies and the price must be between 400000-1500000) */
SELECT address, price
FROM House
WHERE rooms >= 4 AND balconies >= 2 AND price >= 400000 AND price <= 1500000
ORDER BY price DESC;

/* 2nd query returns the address and RENumber of the Listing table
by connecting the filtered result in the House table with its own table */
SELECT Listing.address, Listing.RENumber
FROM Listing, House
WHERE Listing.address = House.address AND House.rooms = 3 AND House.balconies = 2;

/* 3th query, (suppose the Customer's Id is 469 in our case) 
Matches the house features with the criteria the customer is looking for 
and gives the result (all properties of the house) */
SELECT House.*
FROM House, Customer
WHERE Customer.id = 469 AND
      Customer.rooms = House.rooms AND
      Customer.balconies = House.balconies AND
      Customer.minPreferredPrice <= House.price AND
      Customer.maxPreferredPrice >= House.price;

/* 4th query gives which Agent is working with which Customer.
Agent informations are in the Agent table,
Customer informations are in the Customer table
and relation informations between agents and customers are in the Work_With table.*/
SELECT Agent.name AS Agent_Name, Customer.name AS Customer_Name
FROM Agent, Customer, Work_With
WHERE Agent.agentId = Work_With.agentId AND Customer.id = Work_With.CustomerId;

/* code over */
/* FURKAN TAHA ÖZEN 21833355 */









INSERT INTO Property
VALUES('Fatih Mahallesi Aslan sokak no: 13/1', 'Muzaffer Kaya', 924500);

INSERT INTO Property
VALUES('Merkez Mahallesi Ataturk Caddesi no: 45/3', 'Can Asil', 120500);

INSERT INTO Property
VALUES('Yunus Mahallesi 1077. sokak no: 6/15', 'Gonul Bayraktar', 990000);

INSERT INTO Property
VALUES('Fatih Mahallesi 523. sokak no: 3/9', 'Cansel Gun', 160000);

INSERT INTO Property
VALUES('Gunes Mahallesi Cihan sokak no: 22/9', 'Julide Ersoz', 730000);

INSERT INTO Property
VALUES('Merkez Mahallesi Kadioglu sokak no: 3/7', 'Taha Taş', 210000);

INSERT INTO Property
VALUES('Kuzey Mahallesi Mehtap sokak no: 11/14', 'Erkan Can', 385000);

INSERT INTO Property
VALUES('Yunus Mahallesi 1145. sokak no: 23/17', 'Sule Razi', 1050000);

INSERT INTO Property
VALUES('Merkez Mahallesi Sehit sokak no: 3/1', 'Furkan Ozen', 103000);


INSERT INTO House
VALUES('Fatih Mahallesi Aslan sokak no: 13/1', 'Muzaffer Kaya', 924500, ST_GeomFromText('POINT(32.903318 40.038502)', 4326), 4, 2, 203);

INSERT INTO House
VALUES('Merkez Mahallesi Ataturk Caddesi no: 45/3', 'Can Asil', 120500,ST_GeomFromText('POINT(32.903350 40.038502 )', 4326), 2, 1, 180);

INSERT INTO House
VALUES('Yunus Mahallesi 1077. sokak no: 6/15', 'Gonul Bayraktar',990000,ST_GeomFromText('POINT(32.903370 40.038502 )', 4326), 5, 2, 401);

INSERT INTO House
VALUES('Fatih Mahallesi 523. sokak no: 3/9', 'Cansel Gun',160000, ST_GeomFromText('POINT(32.903400 40.038502 )', 4326), 3, 2, 102);

INSERT INTO House
VALUES('Gunes Mahallesi Cihan sokak no: 22/9', 'Julide Ersoz',730000,ST_GeomFromText('POINT(32.903420 40.038502 )', 4326),  4, 2, 196);

INSERT INTO House
VALUES('Merkez Mahallesi Kadioglu sokak no: 3/7', 'Taha Taş',210000,ST_GeomFromText('POINT(32.903450 40.038502 )', 4326), 3, 1, 203);

INSERT INTO House
VALUES('Kuzey Mahallesi Mehtap sokak no: 11/14', 'Erkan Can', 385000,ST_GeomFromText('POINT(32.903470 40.038502 )', 4326), 3, 2, 180);

INSERT INTO House
VALUES('Yunus Mahallesi 1145. sokak no: 23/17', 'Sule Razi',1050000,ST_GeomFromText('POINT(32.903500 40.038502 )', 4326), 5, 3, 401);

INSERT INTO House
VALUES('Merkez Mahallesi Sehit sokak no: 3/1', 'Furkan Ozen',103000,ST_GeomFromText('POINT(32.903520 40.038502 )', 4326), 1, 0, 70);
