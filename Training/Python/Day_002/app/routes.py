from flask import Flask, render_template
from app.calender.watch import calender


app = Flask(__name__)

# By default the URL methods are GET
@app.route("/")
@app.route("/home")
@app.route("/index")
def index():
	user = {"username": "Tony"}
	comments = [
		{
			'author': {'username': 'Natasha'},
			'body': '"The young hot wing" is so awesome!'
		},
		{
			'author': {'username': 'Captain'},
			'body': '"The flying sausage" is the dumbest paragraph I\'ve ever read.'
		},
		{
			'author': {'username': 'Peter'},
			'body': '@Captain, cause is the dumbest shield wielding grandpa I\'ve ever seen. XD'
		}
	]
	return render_template("home.html", title="WebApp", user=user, posts=comments)

@app.route("/date")
def date():
	_cal = calender.get(self=None)
	return render_template("date.html", posts=_cal[0])

@app.route("/time")
def time():
	_cal = calender.get(self=None)
	return render_template("time.html", posts=_cal[1])
