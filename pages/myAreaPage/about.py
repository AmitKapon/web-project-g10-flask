from flask import Blueprint, render_template

# myArea blueprint definition
myArea = Blueprint('myArea', __name__, static_folder='static', static_url_path='/myArea', template_folder='templates')


# Routes
@myArea.route('/myArea')
def index():
    return render_template('myArea.html')
