from flask import Blueprint, render_template
from flask import Flask, redirect,  flash
from flask import request, session
import mysql.connector
from utilities.classes.contact import Contact

# loginPage blueprint definition
loginPage = Blueprint('loginPage', __name__, static_folder='static', static_url_path='/loginPage', template_folder='templates')


# Routes
@loginPage.route('/loginPage')
def index():
    return render_template('loginPage.html')

@loginPage.route('/singUp')
def singUp():
        if request.method == 'POST':
            ct = Contact()
            ct.name = request.form['name']
            ct.email = request.form['email']
            ct.phonenumber = request.form['phonenumber']
            ct.contentrequest = request.form['contentrequest']
            ct.info()
        return redirect('/contactPage')

    return render_template('singUp.html')