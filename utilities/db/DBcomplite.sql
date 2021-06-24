drop schema if exists `web-project-g10`;
create schema `web-project-g10`;

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

INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (123456, 'firstName', 'lastName', 'gender', '099990', 'mail@mail.com', 'address', 'password');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (381121, 'Michal', 'Bulter', 'F', '4995561677', 'jbulter9@time.com', 'Haifa', '1');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (483027, 'Yuval', 'Chevin', 'Male', '8589142398', 'nchevin4@blogtalkradio.com', 'Kfar Sabha', '2');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (513361, 'Ron', 'Dagnall', 'Bigender', '4684154964', 'cdagnall8@statcounter.com', 'Ramat Gan', '3');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (539752, 'Yaron', 'Balsdon', 'Genderqueer', '4854912812', 'gbalsdon0@goo.gl', 'Rehovot', '4');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (654635, 'test@test.ch', 'fghdf', 'dfhd', 'dfhdhg', '456456', 'gfsdfg', 'sdfgdfg');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (656914, 'Moshe', 'Rollinshaw', 'Polygender', '3913684318', 'erollinshaw0@instagram.com', 'Shoval', '5');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (736407, 'noa', 'levi', 'female', '44444', 'kibel1@answers.com', 'Ramat Gan', '6');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (750455, 'Rachel', 'Maciunas', 'Male', '666666', 'emaciunasb@mtv.com', 'Rishon', '7');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (755429, 'Aurora', 'Mityushkin', 'Genderfluid', '6556726663', 'amityushkin2@tuttocitta.it', 'Kesambilerenkrajan', '8');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (788983, 'Kippie', 'McKeating', 'Agender', '3095685995', 'kmckeatinga@kickstarter.com', 'Torre', '9');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (870327, 'Gusta', 'Donnell', 'Bigender', '8478266082', 'gdonnell5@1und1.de', 'Pamoyanan', '10');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (925272, 'Trueman', 'Biles', 'Polygender', '3675104894', 'tbiles6@netvibes.com', 'Cayara', '11');
INSERT INTO `web-project-g10`.clients (clientID, firstName, lastName, gender, phoneNumber, email, address, password) VALUES (956172, 'Kelly', 'Trayes', 'Male', '1001462507', 'ktrayes7@usatoday.com', 'Malgobek', '12');



create table availablemeetings
(
    availableDT datetime not null
        primary key
);

INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-09-01 07:42:44');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-10-07 23:44:35');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-10-12 13:53:00');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-11-25 15:18:51');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-11-27 09:20:18');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-11-30 22:23:19');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-12-06 15:56:49');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-12-10 02:24:50');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-12-10 06:33:26');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-12-19 05:50:31');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-12-19 11:17:33');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-12-21 04:42:04');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2021-12-22 16:38:44');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2022-02-05 00:34:28');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2022-04-03 02:46:35');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2022-05-15 17:08:11');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2022-08-12 18:17:22');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2022-08-28 21:16:01');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2022-09-23 01:21:21');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2022-11-15 14:34:27');
INSERT INTO `web-project-g10`.availablemeetings (availableDT) VALUES ('2022-11-21 23:07:23');



create table forum_messags
(
    clientIDforum    int      not null,
    messageDT        datetime not null,
    title            text     not null,
    content          text     null,
    responesClientID int      null,
    responesDT       datetime null,
    primary key (clientIDforum, messageDT),
    constraint clientID_forum
        foreign key (responesClientID) references clients (clientID),
    constraint responseID
        foreign key (responesClientID, responesDT) references forum_messags (clientIDforum, messageDT)
);

create index responseID_idx
    on forum_messags (responesClientID, responesDT);

INSERT INTO `web-project-g10`.forum_messags (clientIDforum, messageDT, title, content, responesClientID, responesDT) VALUES (483027, '2021-06-10 15:35:33', 'שאלה לעינת', 'האם השיטה של עינת עובדת?
', null, null);
INSERT INTO `web-project-g10`.forum_messags (clientIDforum, messageDT, title, content, responesClientID, responesDT) VALUES (513361, '2021-06-17 16:06:45', 'תשובה', 'לחלוטין!!! חיי השתנו בזכותה!', 483027, '2021-06-10 15:35:33');
INSERT INTO `web-project-g10`.forum_messags (clientIDforum, messageDT, title, content, responesClientID, responesDT) VALUES (736407, '2021-06-22 12:39:41', 'שאלה', 'כמה זמן התהליך לוקח?', null, null);
INSERT INTO `web-project-g10`.forum_messags (clientIDforum, messageDT, title, content, responesClientID, responesDT) VALUES (736407, '2021-06-22 12:40:13', 'בקשה מעינת', 'האם את בונה גם תפריטים?', null, null);
INSERT INTO `web-project-g10`.forum_messags (clientIDforum, messageDT, title, content, responesClientID, responesDT) VALUES (736407, '2021-06-24 21:31:39', 'פגישת היכרות', 'כמה זמן נמשכת הפגישה הראשונה?', null, null);
INSERT INTO `web-project-g10`.forum_messags (clientIDforum, messageDT, title, content, responesClientID, responesDT) VALUES (736407, '2021-06-24 21:45:28', 'reply to פגישת היכרות', 'בדרך כלל פגישה ראשונה לוקחת שעה.', 736407, '2021-06-24 21:31:39');



create table futuremeetings
(
    clientIDmeeting int      not null,
    futureMeetingDT datetime not null,
    requestDate     datetime not null,
    primary key (clientIDmeeting, futureMeetingDT),
    constraint clientID_meetings
        foreign key (clientIDmeeting) references clients (clientID)
);

INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (381121, '2021-09-03 20:56:09', '2020-08-11 20:18:05');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (381121, '2021-11-08 21:05:32', '2021-04-02 05:36:24');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (483027, '2021-06-30 18:37:42', '2021-01-23 16:30:34');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (483027, '2021-08-05 12:43:52', '2021-05-01 04:00:30');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (483027, '2021-12-27 12:19:16', '2020-02-29 04:25:12');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (513361, '2021-11-05 03:56:04', '2020-10-28 03:20:27');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (656914, '2021-12-19 05:32:07', '2021-04-26 18:47:39');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (736407, '2021-09-01 07:42:44', '2021-06-22 19:40:26');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (736407, '2021-09-15 20:27:22', '2021-06-22 19:58:09');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (736407, '2021-10-10 04:56:36', '2021-06-22 19:49:28');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (736407, '2021-11-11 18:28:34', '2021-06-22 19:55:00');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (736407, '2021-11-18 10:15:20', '2021-06-22 19:55:53');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (736407, '2022-12-17 01:06:59', '2021-06-24 23:03:34');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (736407, '2023-01-16 14:07:33', '2021-06-24 22:54:15');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (736407, '2023-02-08 04:52:41', '2021-06-24 22:51:44');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (736407, '2023-02-15 21:00:51', '2021-06-24 22:41:14');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (736407, '2023-05-04 09:44:05', '2021-06-23 15:41:28');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (788983, '2021-10-17 22:57:55', '2020-12-02 22:42:41');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (870327, '2021-08-29 09:48:08', '2020-10-19 01:57:36');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (956172, '2021-08-03 13:00:23', '2020-10-22 07:27:35');


create table personalstories
(
    serialID       int auto_increment
        primary key,
    contentStory   text null,
    clientID_story int  null,
    constraint clientID_story
        foreign key (clientID_story) references clients (clientID)
);

create index clientID_story_idx
    on personalstories (clientID_story);

INSERT INTO `web-project-g10`.personalstories (serialID, contentStory, clientID_story) VALUES (1, 'אני זוכרת את עצמי בדיאטה כבר בגיל 12.
ברמה כזאת שאם אכלתי 100 גרם בורקס, הוספתי מיד 100 גרם למשקל.
הייתי מסתובבת בבית ספר עם שקית של גזר ומלפפונים, ניסיתי דיאטות שונות ובעיקר הרגשתי מקופחת.
התהליך הרציני הראשון שלי התחלתי בגיל 22, אחרי ההריון הראשון, בו העליתי 23 קילו בנוסף לעודף משקל שכבר היה.
מאישה שחשבה על ארוחת הערב שלה בעודה אוכלת את ארוחת הצהריים, הפכתי למישהי שמכניסה רק חלבונים וירקות לצלחת ועושה ספורט בכמות מוגזמת.

בזכות עינת הצלחתי להגשים את החלום שלי', 381121);
INSERT INTO `web-project-g10`.personalstories (serialID, contentStory, clientID_story) VALUES (2, 'בזכות עינת הצלחתי לעמוד במטרות שהצבתי לעצמי. החיים שלי השתנו מקצה לקצה.
ברמה כזאת שאם אכלתי 100 גרם בורקס, הוספתי מיד 100 גרם למשקל.
הייתי מסתובבת בבית ספר עם שקית של גזר ומלפפונים, ניסיתי דיאטות שונות ובעיקר הרגשתי מקופחת.
התהליך הרציני הראשון שלי התחלתי בגיל 22, אחרי ההריון הראשון, בו העליתי 23 קילו בנוסף לעודף משקל שכבר היה.
מאישה שחשבה על ארוחת הערב שלה בעודה אוכלת את ארוחת הצהריים, הפכתי למישהי שמכניסה רק חלבונים וירקות לצלחת ועושה ספורט בכמות מוגזמת.

בזכות עינת הצלחתי להגשים את החלום שלי', 483027);
INSERT INTO `web-project-g10`.personalstories (serialID, contentStory, clientID_story) VALUES (3, 'עינת קשובה לכל בעיה, הפגישות איתה תמיד לימדו אותי דברים חדשים שקל לי ליישם ביומיום.
ברמה כזאת שאם אכלתי 100 גרם בורקס, הוספתי מיד 100 גרם למשקל.
הייתי מסתובבת בבית ספר עם שקית של גזר ומלפפונים, ניסיתי דיאטות שונות ובעיקר הרגשתי מקופחת.
התהליך הרציני הראשון שלי התחלתי בגיל 22, אחרי ההריון הראשון, בו העליתי 23 קילו בנוסף לעודף משקל שכבר היה.
מאישה שחשבה על ארוחת הערב שלה בעודה אוכלת את ארוחת הצהריים, הפכתי למישהי שמכניסה רק חלבונים וירקות לצלחת ועושה ספורט בכמות מוגזמת.

בזכות עינת הצלחתי להגשים את החלום שלי', 513361);
INSERT INTO `web-project-g10`.personalstories (serialID, contentStory, clientID_story) VALUES (4, 'בזכות השיטה הייחודית של עינת הצלחתי לשנות את הרגלי התזונה שלי. מרגיש אנרגטי יותר.
ברמה כזאת שאם אכלתי 100 גרם בורקס, הוספתי מיד 100 גרם למשקל.
הייתי מסתובבת בבית ספר עם שקית של גזר ומלפפונים, ניסיתי דיאטות שונות ובעיקר הרגשתי מקופחת.
התהליך הרציני הראשון שלי התחלתי בגיל 22, אחרי ההריון הראשון, בו העליתי 23 קילו בנוסף לעודף משקל שכבר היה.
מאישה שחשבה על ארוחת הערב שלה בעודה אוכלת את ארוחת הצהריים, הפכתי למישהי שמכניסה רק חלבונים וירקות לצלחת ועושה ספורט בכמות מוגזמת.

בזכות עינת הצלחתי להגשים את החלום שלי', 539752);
INSERT INTO `web-project-g10`.personalstories (serialID, contentStory, clientID_story) VALUES (5, 'אני זוכרת את עצמי בדיאטה כבר בגיל 12.
ברמה כזאת שאם אכלתי 100 גרם בורקס, הוספתי מיד 100 גרם למשקל.
הייתי מסתובבת בבית ספר עם שקית של גזר ומלפפונים, ניסיתי דיאטות שונות ובעיקר הרגשתי מקופחת.
התהליך הרציני הראשון שלי התחלתי בגיל 22, אחרי ההריון הראשון, בו העליתי 23 קילו בנוסף לעודף משקל שכבר היה.
מאישה שחשבה על ארוחת הערב שלה בעודה אוכלת את ארוחת הצהריים, הפכתי למישהי שמכניסה רק חלבונים וירקות לצלחת ועושה ספורט בכמות מוגזמת.

בזכות עינת הצלחתי להגשים את החלום שלי', 656914);
INSERT INTO `web-project-g10`.personalstories (serialID, contentStory, clientID_story) VALUES (6, 'אני זוכרת את עצמי בדיאטה כבר בגיל 12.
התפריט שעינת בנתה לי מלווה אותי כבר מספר חודשים. אני מאוד אוהבת את הגיוון שהיא הכניסה בו.
הייתי מסתובבת בבית ספר עם שקית של גזר ומלפפונים, ניסיתי דיאטות שונות ובעיקר הרגשתי מקופחת.
התהליך הרציני הראשון שלי התחלתי בגיל 22, אחרי ההריון הראשון, בו העליתי 23 קילו בנוסף לעודף משקל שכבר היה.
מאישה שחשבה על ארוחת הערב שלה בעודה אוכלת את ארוחת הצהריים, הפכתי למישהי שמכניסה רק חלבונים וירקות לצלחת ועושה ספורט בכמות מוגזמת.

בזכות עינת הצלחתי להגשים את החלום שלי', 736407);
INSERT INTO `web-project-g10`.personalstories (serialID, contentStory, clientID_story) VALUES (7, 'עינת אלופה. תמיד אפשר להתייעץ איתה. נותנת את כל הכלים שצריך בשביל להצליח ובגדול.
ברמה כזאת שאם אכלתי 100 גרם בורקס, הוספתי מיד 100 גרם למשקל.
הייתי מסתובבת בבית ספר עם שקית של גזר ומלפפונים, ניסיתי דיאטות שונות ובעיקר הרגשתי מקופחת.
התהליך הרציני הראשון שלי התחלתי בגיל 22, אחרי ההריון הראשון, בו העליתי 23 קילו בנוסף לעודף משקל שכבר היה.
מאישה שחשבה על ארוחת הערב שלה בעודה אוכלת את ארוחת הצהריים, הפכתי למישהי שמכניסה רק חלבונים וירקות לצלחת ועושה ספורט בכמות מוגזמת.

בזכות עינת הצלחתי להגשים את החלום שלי', 750455);


create table requestcontacts
(
    serialNum      int auto_increment
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
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (11, 'asda', 'asda@asd.com', '456', 'gsdfgsdf');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (12, 'amit', 'amitd1@gmail.com', '054736235', 'Hi');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (13, 'amitd', 'amitd1@gmail.com', '098765434', 'Hi!');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (14, 'amit', 'amitdavid@gmail.com', '05055880022', 'שלום רב,
רוצה לקבוע פגישה');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (15, 'amit', 'amit@gmail.com', '0505588002', 'שלום');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (16, 'amit da', 'amit@gmail.co.il', '0547668803', 'שלום שלום');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (17, 'amit', 'amit@gmail.com', '0547668803', 'בדיקה');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (18, 'amit', 'amitdavid92@gmail.com', '0508802601', 'dlsfs');
INSERT INTO `web-project-g10`.requestcontacts (serialNum, name, email, phonenumber, contentrequest) VALUES (19, 'amit', 'amit@gmail.com', '0508802601', 'שלום');