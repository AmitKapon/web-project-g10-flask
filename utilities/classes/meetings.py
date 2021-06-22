from utilities.db.db_manager import dbManager
from utilities.db.db_manager import dbManager
from flask import Flask, redirect,  flash
from flask import request, session
from datetime import datetime

class Meeting:
    def __init__(self, availableDT=None,):
        self.availableDT = availableDT



    def insertMeeting(futureMeetingDT):
        requestDate=datetime.now()
        dbManager.commit('''insert into futuremeetings(clientIDmeeting,futureMeetingDT,requestDate)
     values (%s,%s,%s)''',(session['userID'],futureMeetingDT, requestDate.strftime("%Y-%m-%d %H:%M:%S"))
    )


    def checkDate(Year,Month,Day):
      query = "SELECT * FROM availablemeetings where availableDT.Year() = '%s';" % Year
 # and availableDT.Month() = '%s' and availableDT.Day() = '%s'
      query_result = dbManager.fetch(query)
      return query_result
