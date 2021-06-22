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
    x=Meeting()
    answer = Meeting.checkDate(x)
    return render_template('calendarBlock.html',answer=answer)


@schedulePage.route('/chooseDate', methods=['GET', 'POST'])
def chooseDate():
    if request.method == 'POST':
            chosenDate = request.form.get('getMonth')
            myDate = Meeting()
            happend = Meeting.insertMeeting(chosenDate)
            # if(answer != None):
            #      flash(answer)
            # else:
            #     flash("nothing found")
    return render_template('calendarBlock.html' , check=chosenDate)