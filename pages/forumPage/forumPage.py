from flask import Blueprint, render_template
from utilities.db.db_manager import dbManager
from flask import Flask, redirect,  flash
from flask import request, session

# forumPage blueprint definition
forumPage = Blueprint('forumPage', __name__, static_folder='static', static_url_path='/forumPage', template_folder='templates')


# Routes
@forumPage.route('/forumPage')
def index():
    if (session['logged_in']==True):
        return redirect('/forumDisplay')
    else:
        return render_template('forumPage.html')

@forumPage.route('/forumDisplay')
def showForum():
    return render_template('forumBlock.html')



