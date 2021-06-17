from flask import Blueprint, render_template
from utilities.db.db_manager import dbManager

# personalStoryPage blueprint definition
personalStoryPage = Blueprint('personalStoryPage', __name__, static_folder='static',
                                                             static_url_path='/personalStoryPage',
                                                             template_folder='templates')


# Routes
@personalStoryPage.route('/personalStoryPage')
def index():
    return render_template('personalStoryPage.html')
