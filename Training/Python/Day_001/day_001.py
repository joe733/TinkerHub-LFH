# day_001
from flask import Flask

# Flask constructor takes the name of current module (__name__) as argument.
app = Flask(__name__)

# app.route(rule, options)
# The route() function of the Flask class is a decorator, which tells the application which URL should call the associated function.
# The `rule` parameter represents URL binding with the function.
# The `options` is a list of parameters to be forwarded to the underlying Rule object.
# ‘/’ URL is bound with hello_world() function. Hence, when the home page of web server is opened in browser, the output of this function will be rendered.

@app.route('/')
def index():
	# The return type must be a string, dict, tuple
	# 'Hello World!<br>Hey There!' HTML ignores \n\t etc.
	# ('121', 212, '11')
	# {'key': 'values', '112': [358, 1321], 'single-type-key': {2: 36, 18: (108, 1944)}}
	return '''<h3>Hello</h3>
			<h3>Flask</h3>
			<h3>Mini</h3>
			<h3>Web</h3>
			<h3>Framework</h3><br>
			<marquee behavior="alternate">Not gonna regret this TLFH program...</marquee>
			<ul>
			<li>
			<a href="http://127.0.0.1:5000">Index</a>
			</li>
			<li>
			<a href="http://127.0.0.1:5000/home">Home</a>
			</li>
			<li>
			<a href="http://127.0.0.1:5000/contact_us">Contact Us</a>
			</li>
			<ul>'''

@app.route("/home")
def home():
	return "<h1>You're @ Home</h1>Goto: <a href=http://127.0.0.1:5000/>Index</a>"

@app.route("/contact_us")
def contact_us():
	return "<h1>You're @ Contact Us</h1>Goto: <a href=http://127.0.0.1:5000/>Index</a>"

if __name__ == '__main__':
	# the run() method of Flask class runs the application on the local development server. `app.run(host, port, debug, options)`
	app.run(debug=True)
	'''
	A Flask application is started by calling the run() method.
	
	However, while the application is under development, it should be restarted manually for each change in the code.
	To avoid this inconvenience, enable debug support. The server will then reload itself if the code changes. It will also provide a useful debugger to track the errors if any, in the application.

	The Debug mode is enabled by setting the debug property of the application object to True before running or passing the debug parameter to the run() method.
	'''