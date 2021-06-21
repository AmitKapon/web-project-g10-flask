from utilities.db.db_manager import dbManager


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