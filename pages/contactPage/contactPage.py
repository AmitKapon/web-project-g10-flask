from flask import Blueprint, render_template
from flask import Flask, redirect,  flash
from flask import request, session
import mysql.connector
from utilities.classes.contact import Contact


# contactPage blueprint definition
contactPage = Blueprint('contactPage', __name__, static_folder='static', static_url_path='/contactPage', template_folder='templates')


# Routes
@contactPage.route('/contactPage')
def index():
    return render_template('contactPage.html')


@contactPage.route('/request', methods=['GET', 'POST'])
def main_func():
    if request.method == 'POST':
        ct = Contact()
        ct.name = request.form['name']
        ct.email = request.form['email']
        ct.phonenumber = request.form['phonenumber']
        ct.contentrequest = request.form['contentrequest']
        ct.info()

    return redirect('/contactPage')

