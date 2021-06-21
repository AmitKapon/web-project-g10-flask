from flask import Blueprint, render_template
from flask import Flask, redirect,  flash
from flask import request, session
import mysql.connector

from utilities.classes.user import User
from pages.homepage.homepage import homePage

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

# @loginPage.route('/signIn', methods=['GET', 'POST'])
# def signIn():
#     if request.method == 'GET':
#     userId = request.form['username']
#     password= request.form['password']
#     User.Check(userId)

@loginPage.route('/signIn', methods=['GET', 'POST'])
def main_func_sin():
        if request.method == 'POST':
            email = request.form['email']
            password = request.form['password']
            answer = User.Check(email)
            if (answer!= None ):
                session['logged_in'] = True
                session['email'] = email
                session['user_password'] = password
                session['firstName']= answer[0][1]
                flash('You are in!')
                flash(session['firstName'])
                us=User()
                firstname=us.firstName
            else:
                flash('email not in the system!')

        return redirect('/homePage')


# @loginPage.route('/toHome')
#     def toHome():
#         return redirect('/homePage')

    # return render_template('../pages/homepage/templates/homepage.html',userId=userId,password=password,
    #                        curr_user={'firstname': "Amit",'lastname': "David"})