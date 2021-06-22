from flask import Blueprint, render_template
from utilities.db.db_manager import dbManager
from flask import Flask, redirect,  flash
from flask import request, session
from utilities.classes.forum import Forum


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
    fullForum= Forum()
    fullForum1 = Forum.getForum(fullForum)
    return render_template('forumBlock.html', fullForum=fullForum1, fullresponses=fullForum1)


@forumPage.route('/forumMessage')
def forum_message():
    query = "select * from forum_message"
    query_result = dbManager(query=query, query_type='fetch')
    return render_template('forumPage.html', forum_message=query_result)

@forumPage.route('/insert_forum', methods=['GET', 'POST'])
def insert_forum_message():
    if request.method == 'POST':
        topic = request.form['topic']
        contentrequest = request.form['contentrequest']
        Forum.insertTopic(topic,contentrequest)

        return redirect('/forumDisplay')
    return redirect('/forumDisplay')


@forumPage.route('/delete_user', methods=['GET', 'POST'])
def delete_user():
    if request.method == 'POST':
        user_id = request.form['id']
        query = "delete from users where id ='%s';" % user_id
        dbManager(query, query_type='commit')
        return redirect('/forumDisplay')
    return redirect('/forumDisplay')


@forumPage.route('/update_user', methods=['GET', 'POST'])
def update_user():
    if request.method == 'POST':
        user_id = request.form['id']
        if request.form['firstname']:
            newFirstName = request.form['firstname']
            query = "update users set firstname = '%s' where id ='%s';" % (newFirstName, user_id)
            dbManager(query, query_type='commit')
        if request.form['lastname']:
            newLastName = request.form['lastname']
            query = "update users set lastname = '%s' where id ='%s';" % (newLastName, user_id)
            dbManager(query, query_type='commit')
        if request.form['email']:
            newEmail = request.form['email']
            query = "update users set email = '%s' where id ='%s';" % (newEmail, user_id)
            dbManager(query, query_type='commit')
        return redirect('/users')
    return redirect('/users')
