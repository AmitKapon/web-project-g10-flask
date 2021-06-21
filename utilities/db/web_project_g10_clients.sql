create table clients
(
    clientID    int        not null
        primary key,
    firstName   text       not null,
    lastName    text       not null,
    gender      text       not null,
    phoneNumber mediumtext not null,
    email       text       not null,
    address     text       null,
    password    text       not null
);

INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (381121, 'Michal', 'Bulter', 'F', '4995561677', 'jbulter9@time.com', 'Haifa', '1');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (483027, 'Yuval', 'Chevin', 'Male', '8589142398', 'nchevin4@blogtalkradio.com', 'Kfar Sabha', '2');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (513361, 'Ron', 'Dagnall', 'Bigender', '4684154964', 'cdagnall8@statcounter.com', 'Ramat Gan', '3');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (539752, 'Yaron', 'Balsdon', 'Genderqueer', '4854912812', 'gbalsdon0@goo.gl', 'Rehovot', '4');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (656914, 'Moshe', 'Rollinshaw', 'Polygender', '3913684318', 'erollinshaw0@instagram.com', 'Shoval', '5');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (736407, 'Noa', 'Ibel', 'Bigender', '3748532514', 'kibel1@answers.com', 'Netania', '6');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (750455, 'Rachel', 'Maciunas', 'Male', '8481683022', 'emaciunasb@mtv.com', 'Rishon le sion', '7');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (755429, 'Aurora', 'Mityushkin', 'Genderfluid', '6556726663', 'amityushkin2@tuttocitta.it', 'Kesambilerenkrajan', '8');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (788983, 'Kippie', 'McKeating', 'Agender', '3095685995', 'kmckeatinga@kickstarter.com', 'Torre', '9');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (870327, 'Gusta', 'Donnell', 'Bigender', '8478266082', 'gdonnell5@1und1.de', 'Pamoyanan', '10');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (925272, 'Trueman', 'Biles', 'Polygender', '3675104894', 'tbiles6@netvibes.com', 'Cayara', '11');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (956172, 'Kelly', 'Trayes', 'Male', '1001462507', 'ktrayes7@usatoday.com', 'Malgobek', '12');