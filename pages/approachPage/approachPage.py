from flask import Blueprint, render_template

# approachPage blueprint definition
approachPage = Blueprint('approachPage', __name__, static_folder='static', static_url_path='/approachPage', template_folder='templates')


# Routes
@approachPage.route('/approachPage')
def index():
    return render_template('approachPage.html')
