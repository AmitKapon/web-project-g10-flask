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

@homePage.route('/loginPage')
def goToComment():
         return render_template('loginPage.html')



@homePage.route('/updateDetails', methods=['GET', 'POST'])
def update():
    if request.method == 'POST':
        currentuser = User(
            clientID=session['userID'],
            **request.form
        )
        currentuser.update()
    return redirect('/detailPage')


@homePage.route('/detailPage', methods=['GET','POST'])
def detail():
    user = User()
    user = User.Check(session['email'])
    return render_template('detailPage.html', user=user)
