import 'dart:io';
import 'dart:core';

class Participant{
	var name, role, stack, time; //class members

	Participant(){ //constructor
		stdout.write("Name: ");
		name = stdin.readLineSync();
    stack = [];
	}
	//class methods
	void addStacks(){
		stdout.write("Enter number of interests: ");
		int num_intrs = int.parse(stdin.readLineSync());
		stdout.write("Enter $num_intrs skills you are looking for: ");
		for(int i=0; i<num_intrs; i++){
			stack.add(stdin.readLineSync());
		}
	}
	void setMentorOrLearner(){
		stdout.write("Role: ");
		role = stdin.readLineSync();
	}
	void setAvailableTime(){
		if (role == "Mentor"){
      stdout.write("Enter avalilable time: ");
			time = int.parse(stdin.readLineSync());
		}
	}
	void getMentor(var stk, var tm){
		if (role == "Mentor"){
			for (var tech in stk){
				if (stack.contains(tech) && tm < time){
					print("\n$tech : $name");
				}
			}
		}
	}
}

void main(){
	var person = {}, stack = [], time;
	stdout.write("Enter number of participants: ");
	int nm = int.parse(stdin.readLineSync());
	for(int i=0; i<nm; i++){
		print("\nPerson: "+(i+1).toString());
		person.putIfAbsent(i, () => Participant());
		person[i].addStacks();
		person[i].setMentorOrLearner();
		person[i].setAvailableTime();
	}
	
	print("\n\n<< == Database Updated == >>\n\n");

	stdout.write("Enter number of interests: ");
	int num_intrs = int.parse(stdin.readLineSync());
	stdout.write("Enter $num_intrs skills you are looking for: ");
	for(int i=0; i<num_intrs; i++){
		stack.add(stdin.readLineSync());
	}

	stdout.write("Enter avaliable time: ");
	time = int.parse(stdin.readLineSync());
	for(int i=0; i<nm; i++){
    person[i].getMentor(stack, time);
	}
}