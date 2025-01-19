# Quiz Master Website

The `quizmaster_website` project is a website for the Quiz Master application. You can express your opinion by wring a post in the community tab.

You need to set a secret key (just a secret.key file in the root folder) before launch the app. It encrypts your session (cockies) and it's obligatory. Don't forgot create a database de-commenting the lines 55-57 in `core/database.py` and to change `__sitename__` in `app.py` in line **9**, it's used to copy the link to a post and maybe something else in the future.

## Docker

We built a special docker image for running with special embeded python.
