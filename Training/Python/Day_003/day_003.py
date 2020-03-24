# day_001
from flask import Flask

# Flask constructor takes the name of current module (__name__) as argument.
app = Flask(__name__)

# GET is required when methods is explicitly mentioned; else it is taken by default, i.e. when 'methods' is not mentioned
# app.route(rule, options)
# The route() function of the Flask class is a decorator, which tells the application which URL should call the associated function.
# The `rule` parameter represents URL binding with the function.
# The `options` is a list of parameters to be forwarded to the underlying Rule object.
# ‘/’ URL is bound with hello_world() function. Hence, when the home page of web server is opened in browser, the output of this function will be rendered.

@app.route('/')
def hello_world():
	# The return type must be a string, dict, tuple
	# 'Hello World!<br>Hey There!' html ignores \n\t etc.
	# ('121', 212, '11')
	return {'key': 'values', '112': [358, 1321], 'single-type-key': {2: 36, 18: (108, 1944)}}

if __name__ == '__main__':
	# the run() method of Flask class runs the application on the local development server. `app.run(host, port, debug, options)`
	app.run(debug=True)
	'''
	A Flask application is started by calling the run() method.
	
	However, while the application is under development, it should be restarted manually for each change in the code.
	To avoid this inconvenience, enable debug support. The server will then reload itself if the code changes. It will also provide a useful debugger to track the errors if any, in the application.

	The Debug mode is enabled by setting the debug property of the application object to True before running or passing the debug parameter to the run() method.
	'''
