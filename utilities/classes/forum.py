from utilities.db.db_manager import dbManager
from utilities.db.db_manager import dbManager
from flask import Flask, redirect,  flash
from flask import request, session
from datetime import datetime

class Forum:
    def __init__(self, clientIDforum=None, messageDT=None, title=None,
                 content=None, responseClientID=None, responseDT=None, posted=None):
        self.clientIDforum = clientIDforum
        self.messageDT = messageDT
        self.title = title
        self.content = content
        self.responseClientID=responseClientID
        self.responseDT=responseDT
        self.posted = False

    def insertTopic(title,content):
        forumDate=datetime.now()
        dbManager.commit('''insert into forum_messags(clientIDforum,messageDT,title,content)
     values (%s,%s,%s,%s)''',(session['userID'], forumDate.strftime("%Y-%m-%d %H:%M:%S") , title, content)
    )

    def getTopic(self):
        query = "SELECT title FROM forum_messags where responesClientID is NULL "
        # and availableDT.Month() = '%s' and availableDT.Day() = '%s'
        query_result = dbManager.fetch(query)
        return query_result

    def getForum(self):
        query = "SELECT * FROM forum_messags;"
        query_result = dbManager.fetch(query)
        return query_result