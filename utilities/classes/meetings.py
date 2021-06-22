from utilities.db.db_manager import dbManager
from utilities.db.db_manager import dbManager
from flask import Flask, redirect,  flash
from flask import request, session
from datetime import datetime

class Meeting:
    def __init__(self, Year=None,Month=None,Day=None):
        self.Year = Year
        self.Month = Month
        self.Day = Day



    # def insertMeeting(futureMeetingDT):
    #     requestDate=datetime.now()
    #     dbManager.commit('''insert into futuremeetings(clientIDmeeting,futureMeetingDT,requestDate)
    #  values (%s,%s,%s)''',(session['userID'],futureMeetingDT, requestDate.strftime("%Y-%m-%d %H:%M:%S"))
    # )

    def checkDate(self):
      query = "SELECT * FROM availablemeetings "
        # and availableDT.Month() = '%s' and availableDT.Day() = '%s'
      query_result = dbManager.fetch(query)
      return query_result


    def insertMeeting(chosenDate):
        dbManager.commit('''
            INSERT INTO futuremeetings(clientIDmeeting, futureMeetingDT, requestDate)
            VALUES (%s, %s, %s)
            ''', (session['userID'], chosenDate, datetime.now()))

        dbManager.commit('''
                    delete from availablemeetings where availableDT='%s'
                           ''' %chosenDate)





    # def schedule_a_date(chosenDate):
    #     query_result1 = chosenDate.insertMeeting(chosenDate)
    #     query_result2 = removeAvailable(chosenDate)
    #     if (query_result1 != None and query_result2 != None):
    #         return True
    #     else:
    #         return False



