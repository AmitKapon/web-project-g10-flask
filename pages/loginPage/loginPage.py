from flask import Blueprint, render_template
from flask import Flask, redirect,  flash
from flask import request, session
import mysql.connector
from utilities.classes.user import User

# loginPage blueprint definition
loginPage = Blueprint('loginPage', __name__, static_folder='static', static_url_path='/loginPage', template_folder='templates')


# Routes
@loginPage.route('/loginPage')
def index():
    return render_template('loginPage.html')

@loginPage.route('/singUp')
def singUp():
    return render_template('singUp.html')


@loginPage.route('/singedUp')
def signedUp():
  if request.method == 'POST':
            user = User()
            user.clientID = request.form['clientID']
            user.firstName = request.form['firstName']
            user.lastName = request.form['lastName']
            user.phonenumber = request.form['phonenumber']
            user.contentrequest = request.form['contentrequest']
            user.info()
        return redirect('/contactPage')

self.email = email
        self.firstName = firstName
        self.clientID = clientID
        self.lastName = lastName
        self.gender = gender
        self.phoneNumber = phoneNumber
        self.address = address
        self.password = password