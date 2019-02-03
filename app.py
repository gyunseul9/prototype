from flask import Flask, render_template, request
import sys
import re
import datetime

app = Flask(__name__)
app.config['TEMPLATES_AUTO_RELOAD'] = True

@app.route('/')
def main():
    return render_template('index.html')

@app.route('/sub')
def sub():

    try:

        page = request.args.get('page', default = 'lognin', type = str)
        
        print('app.py:',page)

        if page == 'login':
            template = render_template('sub/login.html')
        elif page == 'mypage':
            template = render_template('sub/mypage.html')

    except Exception as e:
        with open('/home/ubuntu/Bitbucket/prototype/error.log', 'a') as file:
            file.write('{} YOU GOT AN ERROR: {}\n'.format(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'), str(e)))

    return template

if __name__ == '__main__':
    app.run('0.0.0.0',debug=True)

