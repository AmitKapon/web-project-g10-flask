create table forummessags
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
        foreign key (responesClientID, responesDT) references forummessags (clientIDforum, messageDT)
);

create index responseID_idx
    on forummessags (responesClientID, responesDT);

INSERT INTO `web-project-g10`.forum_messags (clientIDforum, messageDT, title, content, responesClientID, responesDT) VALUES (483027, '2021-06-10 15:35:33', 'question', 'is Einat''s method works?
', null, null);
INSERT INTO `web-project-g10`.forum_messags (clientIDforum, messageDT, title, content, responesClientID, responesDT) VALUES (513361, '2021-06-17 16:06:45', 'answer', 'absulotely!!!! she changed my life!', 483027, '2021-06-10 15:35:33');