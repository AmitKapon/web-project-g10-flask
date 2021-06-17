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
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (788983, '2021-10-17 22:57:55', '2020-12-02 22:42:41');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (870327, '2021-08-29 09:48:08', '2020-10-19 01:57:36');
INSERT INTO `web-project-g10`.futuremeetings (clientIDmeeting, futureMeetingDT, requestDate) VALUES (956172, '2021-08-03 13:00:23', '2020-10-22 07:27:35');