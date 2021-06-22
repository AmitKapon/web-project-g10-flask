from flask import Blueprint, render_template, redirect, url_for
from utilities.db.db_manager import dbManager
from flask import request, session, flash
from utilities.classes.user import User

# homepage blueprint definition
homePage = Blueprint('homePage', __name__,
                     static_folder='static',
                     static_url_path='/',
                     template_folder='templates')


# Routes
@homePage.route('/')
def index():
    return render_template('homePage.html')


@homePage.route('/homePage')
@homePage.route('/home')
def redirect_homepage():
    return redirect(url_for('homePage.index'))

@homePage.route('/logout')
def logout():
    session['logged_in'] = False
    session['email'] = None
    session['user_password'] = None
    session['firstName'] = None
    return redirect(url_for('homePage.index'))


@homePage.route('/updateDetails', methods=['GET', 'POST'])
def update():
    if request.method == 'POST':
        currentuser = User()
        currentuser = User.Check(session['email'])
        newuser = User()
        flash('Im Here')
        if request.form['clientID'] is not None:
            newuser.clientID = request.form['clientID']
        else:
            newuser.clientID = currentuser[0][0]

        if request.form['firstName'] is not None:
            newuser.firstName = request.form['firstName']
        else:
            newuser.firstName = currentuser[0][1]

        if request.form['lastName'] is not None:
            newuser.lastName = request.form['lastName']
        else:
            newuser.lastName = currentuser[0][2]

        if request.form['gender'] is not None:
            newuser.gender = request.form['gender']
        else:
            newuser.gender = currentuser[0][3]

        if request.form['phoneNumber'] is not None:
            newuser.phoneNumber = request.form['phoneNumber']
            flash('phone changed')

        else:
            newuser.phoneNumber = currentuser[0][4]
            flash('same phone')

        if request.form['email'] is not None:
            newuser.email = request.form['email']
        else:
            newuser.email = currentuser[0][5]

        if request.form['address'] is not None:
            newuser.address = request.form['address']
        else:
            newuser.address = currentuser[0][6]

        if request.form['password'] is not None:
            newuser.password = request.form['password']
        else:
            newuser.password = currentuser[0][7]

    newuser.update()
    flash('newuser')
    return redirect('/detailPage')


@homePage.route('/detailPage', methods=['GET','POST'])
def detail():
    user = User()
    user = User.Check(session['email'])

    return render_template('detailPage.html', user=user)
