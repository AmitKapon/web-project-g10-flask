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


@loginPage.route('/signedUp', methods=['GET', 'POST'])
def signedUp():
  if request.method == 'POST':
            user = User()
            user.clientID = request.form['clientID']
            user.firstName = request.form['firstName']
            user.lastName = request.form['lastName']
            user.gender = request.form['gender']
            user.phoneNumber = request.form['phoneNumber']
            user.email = request.form['email']
            user.address = request.form['address']
            user.password = request.form['password']
            user.info()
  return redirect('/loginPage')
