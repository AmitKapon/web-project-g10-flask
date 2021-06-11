from flask import Blueprint, render_template, redirect, url_for

# homepage blueprint definition
homePage = Blueprint('homePage', __name__, static_folder='static', static_url_path='/homePage', template_folder='templates')


# Routes
@homePage.route('/')
def index():
    return render_template('homePage.html')


@homePage.route('/homePage')
@homePage.route('/home')
def redirect_homepage():
    return redirect(url_for('homePage.index'))
