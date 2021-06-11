from flask import Blueprint, render_template

# contactPage blueprint definition
contactPage = Blueprint('contactPage', __name__, static_folder='static', static_url_path='/contactPage', template_folder='templates')


# Routes
@contactPage.route('/contactPage')
def index():
    return render_template('contactPage.html')
