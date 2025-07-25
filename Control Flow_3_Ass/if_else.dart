import 'dart:io';

void main() {
  print("Enter your score: ");
  int? score = int.tryParse(stdin.readLineSync() ?? '');

  if(score == null || score<0 || score> 100){
    print("Invalid input. Please enter a valid number.");
  }else if(score>=90){
    print("Excellent! You got an A.");
  }else if(score>=80){
    print("Excellent! You got an B.");
  }else if(score>=70){
    print("Excellent! You got an C.");
  }else{
    print("You need improvement. You got a D.");
  }  

}