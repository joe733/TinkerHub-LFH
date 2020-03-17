class Participant:
	'''python class for tech learners and mentors'''
	def __init__(self): 				# initialization
		self.name=input("Name: ") 		# name of the person
		self.role=''					# role = 'mentor' / 'learner'
		self.stack=[]					# stack = 'interests' / 'skills'
		self.time=-1					# time = available time for mentor
		#self.delegate={self.name:self.role}
	def addStacks(self):
		self.stack.extend(list(map(str, input("Interests/Skills: ").split())))
	def setMentorOrLearner(self):
		self.role=input("Role: ")
	def setAvailableTime(self):
		if self.role=="Mentor":
			self.time=int(input("Time: "))
		return
	def getMentor(self, stack, time):
		if self.role == "Mentor":
			for tech in stack:
				if tech in self.stack and time < self.time:
					print(f"{tech} : {self.name}")
		return


person = {}
num = int(input("Enter number of participants: "))
for i in range(num):
	print("\nPerson: "+str(i+1))
	person[i] = Participant()
	person[i].addStacks()
	person[i].setMentorOrLearner()
	person[i].setAvailableTime()

print("\n\n<< == Database Updated == >>\n\n")

stack = list(map(str, input("Enter your interests: ").split()))
time = int(input("Enter available time: "))
for i in range(num):
	person[i].getMentor(stack, time)