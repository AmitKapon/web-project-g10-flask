from utilities.db.db_manager import dbManager


class Forum:
    def __init__(self, name=None, email=None, phonenumber=None, contentrequest=None):
        self.email = email
        self.name = name
        self.phonenumber = phonenumber
        self.contentrequest = contentrequest

    def info(self):
        dbManager.commit('''
        INSERT INTO requestcontacts(name, email, phonenumber, contentrequest)
        VALUES (%s, %s, %s, %s)
        ''', ( self.name, self.email, self.phonenumber, self.contentrequest))