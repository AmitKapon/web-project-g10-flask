from flask import Blueprint, render_template
from utilities.db.db_manager import dbManager
from flask import Flask, redirect,  flash
from flask import request, session
from utilities.classes.forum import Forum
from datetime import datetime


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

@forumPage.route('/insert_comment', methods=['GET', 'POST'])
def insert_comment():
    if request.method == 'POST':
        getComment = request.form.get('getComment')
        contentrequest = request.form['contentrequest']
        origin=Forum.searchTopic(getComment)
        comment= Forum()
        comment.title= getComment
        comment.clientIDforum = session['userID']
        comment.content= contentrequest
        comment.responseClientID = origin[0][0]
        comment.messageDT = datetime.now()
        comment.responseDT = origin[0][1]
        Forum.insertComment(comment)
        return redirect('/forumDisplay')
    return redirect('/forumDisplay')

@forumPage.route('/goToComment', methods=['GET', 'POST'])
def goToComment():
         x=Forum()
         topicList = Forum.getTopic(x)
         return render_template('comment.html',topicList=topicList)


