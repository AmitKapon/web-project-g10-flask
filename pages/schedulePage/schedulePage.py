from flask import Blueprint, render_template
from utilities.db.db_manager import dbManager

# schedulePage blueprint definition
schedulePage = Blueprint('schedulePage', __name__, static_folder='static', static_url_path='/schedulePage', template_folder='templates')


# Routes
@schedulePage.route('/schedulePage')
def index():
    return render_template('schedulePage.html')

