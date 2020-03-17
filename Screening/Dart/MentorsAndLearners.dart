import 'dart:io';
import 'dart:core';

class Participant{
	var name, role, stack, time;

	Participant(){
		print("Name: ");
		name = stdin.readLineSync();
	}

	void addStacks(){
		print("Enter number of intersets: ");
		int num_intrs = int.parse(stdin.readLineSync());
		print("Enter $num_intrs skills you are looking for: ");
		for(int i=0; i<num_intrs; i++){
			stack.add(stdin.readLineSync());
		}
	}
	void setMentorOrLearner(){
		print("Role: ");
		role = stdin.readLineSync();
	}
	void setAvailableTime(){
		if (role == "Mentor"){
			time = int.parse(stdin.readLineSync());
		}
	}
	void getMentor(var stk, var tm){
		if (role == "Mentor"){
			for (var tech in stk){
				var result = stack.Where(tech, orElse: () => null);
				if (result == null){
					break;
        }
				else if (tm < time){
					print("$tech : $name");
				}
			}
		}
	}
}

void main(){
	var person = {}, stack, time;
	print("Enter number of participants: ");
	int nm = int.parse(stdin.readLineSync());
	for(int i=0; i<nm; i++){
		print("\n Person: "+(i+1).toString());
		person.putIfAbsent(i, () => Participant());
		person[i].addStacks();
		person[i].setMentorOrLearner();
		person[i].setAvailableTime();
	}
	
	print("\n\n<< == Database Updated == >>\n\n");

	print("Enter number of intersets: ");
	int num_intrs = int.parse(stdin.readLineSync());
	print("Enter $num_intrs skills you are looking for: ");
	for(int i=0; i<num_intrs; i++){
		stack.add(stdin.readLineSync());
	}


	print("Enter avaliable time: ");
	time = int.parse(stdin.readLineSync());
	for(int i=0; i<nm; i++){
		person.putIfAbsent(i, () => person[i].getMentor(stack, time));
	}
}