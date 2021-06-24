from utilities.db.db_manager import dbManager
from flask import Flask, redirect,  flash
from flask import request, session


class User:
    def __init__(self, clientID=None, firstName=None, lastName=None, gender=None, phoneNumber=None, email=None, address=None , password=None):
        self.email = email
        self.firstName = firstName
        self.clientID = clientID
        self.lastName = lastName
        self.gender = gender
        self.phoneNumber = phoneNumber
        self.address = address
        self.password = password

    def info(self):
        dbManager.commit('''
        INSERT INTO clients(clientID, firstName, lastName, gender, phoneNumber, email, address , password)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        ''', ( self.clientID, self.firstName, self.lastName, self.gender, self.phoneNumber, self.email, self.address, self.password))

    def Check(myEmail):
        query = "SELECT * FROM clients where email = '%s';" % myEmail
        query_result = dbManager.fetch(query)
        return query_result

    def update(self):
         dbManager.commit(f""" UPDATE clients
         SET firstName='%s', lastName='%s', gender='%s', phoneNumber=%s, email='%s', address='%s', password='%s'
         where clientID=%s"""%
                          (self.firstName, self.lastName, self.gender, self.phoneNumber, self.email, self.address, self.password, self.clientID))

