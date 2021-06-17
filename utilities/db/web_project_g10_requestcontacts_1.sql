create table requestcontacts
(
    serialNum      int        not null
        primary key,
    name           text       not null,
    email          text       null,
    phonenumber    mediumtext not null,
    contentrequest text       null
);

INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (1, 'Leela Buncher', 'lbuncher0@msu.edu', '4209929974', 'Hi I would love to talk with Einat on a phone call');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (2, 'Winston Bartolomivis', 'wbartolomivis1@nih.gov', '7049176013', 'Hi! is the clinic opens on fridays?');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (3, 'Mareah Hulmes', 'mhulmes2@moonfruit.com', '1028069114', 'Hi! can I meet you on zoom?');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (4, 'Reinhold Lisamore', 'rlisamore3@nymag.com', '1948710977', 'what is the minimum age to get a tritment?');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (5, 'Jobina Crosi', 'jcrosi4@cafepress.com', '2518940540', 'hello, can I join my husband to his meeting? And ask some questions for me?');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (6, 'Florie Gilkes', 'fgilkes5@storify.com', '5282774928', 'Is the first meeting for free?');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (7, 'Shari Mousley', 'smousley6@vinaora.com', '2352355869', 'can I eat more then one hamburger at the same week?');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (8, 'Johnnie Kubista', 'jkubista7@amazon.co.uk', '2578160198', 'Do you work with bit?');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (9, 'Gaye Joder', 'gjoder8@youtu.be', '5364810271', 'Do you work with Macabi and privet only?');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (10, 'Tadeo Liddel', 'tliddel9@acquirethisname.com', '2957376369', 'is an access to wheelchair exist?');