create table clients
(
    clientID       int        not null
        primary key,
    firstName      text       not null,
    lastName       text       not null,
    gender         text       not null,
    phoneNumber    mediumtext not null,
    email          text       not null,
    address        text       null,
    firstMeetingDT datetime   null
);

INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (381121, 'Michal', 'Bulter', 'F', '4995561677', 'jbulter9@time.com', 'Haifa', '2020-03-06 14:57:34');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (483027, 'Yuval', 'Chevin', 'Male', '8589142398', 'nchevin4@blogtalkradio.com', 'Kfar Sabha', '2020-08-14 17:03:09');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (513361, 'Ron', 'Dagnall', 'Bigender', '4684154964', 'cdagnall8@statcounter.com', 'Ramat Gan', '2018-07-07 19:50:04');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (539752, 'Yaron', 'Balsdon', 'Genderqueer', '4854912812', 'gbalsdon0@goo.gl', 'Rehovot', '2021-01-13 01:48:12');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (656914, 'Moshe', 'Rollinshaw', 'Polygender', '3913684318', 'erollinshaw0@instagram.com', 'Shoval', '2019-02-08 00:00:00');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (736407, 'Noa', 'Ibel', 'Bigender', '3748532514', 'kibel1@answers.com', 'Netania', '2021-04-01 15:59:47');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (750455, 'Rachel', 'Maciunas', 'Male', '8481683022', 'emaciunasb@mtv.com', 'Rishon le sion', '2020-12-29 00:00:00');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (755429, 'Aurora', 'Mityushkin', 'Genderfluid', '6556726663', 'amityushkin2@tuttocitta.it', 'Kesambilerenkrajan', '2020-05-31 00:00:00');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (788983, 'Kippie', 'McKeating', 'Agender', '3095685995', 'kmckeatinga@kickstarter.com', 'Torre', '2018-12-01 07:18:07');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (870327, 'Gusta', 'Donnell', 'Bigender', '8478266082', 'gdonnell5@1und1.de', 'Pamoyanan', '2020-05-30 21:23:02');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (925272, 'Trueman', 'Biles', 'Polygender', '3675104894', 'tbiles6@netvibes.com', 'Cayara', '2020-12-21 18:27:23');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, firstMeetingDT) VALUES (956172, 'Kelly', 'Trayes', 'Male', '1001462507', 'ktrayes7@usatoday.com', 'Malgobek', '2018-01-28 01:51:40');