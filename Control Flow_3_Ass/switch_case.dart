import 'dart:io';

void main(){
print("Enter the number od day: ");
  int? day = int.tryParse(stdin.readLineSync() ?? '');
  
  switch(day){
    case 2:
      print("Monday");
      break;
    case 3:
      print("Tuesday");
      break;
    case 4:
      print("Wednesday");
      break;
    case 5:
      print("Thursday");
      break;
    case 6:
      print("Friday");
      break;
    case 7:
      print("Saturday");
      break;
    case 1:
      print("Sunday");
      break;
    default:
      print("Invalid input");
  }
}