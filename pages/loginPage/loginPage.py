from flask import Blueprint, render_template

# loginPage blueprint definition
loginPage = Blueprint('loginPage', __name__, static_folder='static', static_url_path='/loginPage', template_folder='templates')


# Routes
@loginPage.route('/loginPage')
def index():
    return render_template('loginPage.html')
