from flask import Blueprint, render_template

# tipsPage blueprint definition
tipsPage = Blueprint('tipsPage', __name__, static_folder='static', static_url_path='/tipsPage', template_folder='templates')


# Routes
@tipsPage.route('/tipsPage')
def index():
    return render_template('tipsPage.html')
