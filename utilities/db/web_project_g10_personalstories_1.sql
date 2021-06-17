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