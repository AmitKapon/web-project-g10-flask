from flask import Blueprint, render_template

# aboutPage blueprint definition
aboutPage = Blueprint('aboutPage', __name__, static_folder='static', static_url_path='/aboutPage', template_folder='templates')


# Routes
@aboutPage.route('/aboutPage')
def index():
    return render_template('aboutPage.html')
