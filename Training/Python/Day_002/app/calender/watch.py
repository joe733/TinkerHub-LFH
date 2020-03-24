from datetime import datetime as dt

class calender:
	_date = _time = ''
	def get(self):
		_date = dt.now().strftime("%A - %B %d, %Y")
		_time = dt.now().strftime("%Ih : %Mm : %Ss %p")
		return [_date, _time]
