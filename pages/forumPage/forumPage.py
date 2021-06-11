from flask import Blueprint, render_template

# forumPage blueprint definition
forumPage = Blueprint('forumPage', __name__, static_folder='static', static_url_path='/forumPage', template_folder='templates')


# Routes
@forumPage.route('/forumPage')
def index():
    return render_template('forumPage.html')
