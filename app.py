from flask import Flask


###### App setup
app = Flask(__name__)
app.config.from_pyfile('settings.py')

###### Pages
## Homepage
from pages.homepage.homepage import homePage
app.register_blueprint(homePage)

## About
from pages.aboutPage.aboutPage import aboutPage
app.register_blueprint(aboutPage)

## approach
from pages.approachPage.approachPage import approachPage
app.register_blueprint(approachPage)

## contact
from pages.contactPage.contactPage import contactPage
app.register_blueprint(contactPage)

## forum
from pages.forumPage.forumPage import forumPage
app.register_blueprint(forumPage)

## login page
from pages.loginPage.loginPage import loginPage
app.register_blueprint(loginPage)

## personal Stories
from pages.personalStoryPage.personalStoryPage import personalStoryPage
app.register_blueprint(personalStoryPage)

## schedule page
from pages.schedulePage.schedulePage import schedulePage
app.register_blueprint(schedulePage)

## sign Up Page
from pages.signUpPage.signUpPage import signUpPage
app.register_blueprint(signUpPage)

## tips Page
from pages.tipsPage.tipsPage import tipsPage
app.register_blueprint(tipsPage)



# ## Page error handlers
# from pages.page_error_handlers.page_error_handlers import page_error_handlers
# app.register_blueprint(page_error_handlers)
#
#
# ###### Components
# ## Main menu
# from components.main_menu.main_menu import main_menu
# app.register_blueprint(main_menu)
