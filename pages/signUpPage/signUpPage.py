from flask import Blueprint, render_template

# signUpPage blueprint definition
signUpPage = Blueprint('signUpPage', __name__, static_folder='static', static_url_path='/signUpPage', template_folder='templates')


# Routes
@signUpPage.route('/signUpPage')
def index():
    return render_template('signUpPage.html')
