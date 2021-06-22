from flask import Blueprint, render_template
from flask import Flask, redirect,  flash
from flask import request, session
from utilities.classes.meetings import Meeting

# schedulePage blueprint definition
schedulePage = Blueprint('schedulePage', __name__, static_folder='static', static_url_path='/schedulePage', template_folder='templates')


# Routes
@schedulePage.route('/schedulePage')
def index():
    if (session['logged_in']==True):
        return redirect('/displayCalendar')
    else:
        return render_template('schedulePage.html')


@schedulePage.route('/displayCalendar')
def calendar():

    return render_template('calendarBlock.html')



@schedulePage.route('/chooseDate', methods=['GET', 'POST'])
def chooseDate():
    if request.method == 'POST':
            chooseYear = request.form['chooseYear']
            chooseMonth = request.form['chooseMonth']
            chooseDay = request.form['chooseDay']
            answer = Meeting.checkDate(chooseYear,chooseMonth,chooseDay)
     if(answer != None)



    return render_template('calendarBlock.html')