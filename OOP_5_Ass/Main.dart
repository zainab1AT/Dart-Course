import 'Student.dart';

main() {
  // 4. Creating a list to hold Student objects
  List<Student> students = [];

  Student student1 = Student("Zainab", 100);
  Student student2 = Student.withDetails(
    name: 'Mohammad',
    grade: 99.7,
    email: 'moh@gmail.com',
    phone: '123-6443-7890',
  );
  Student student3 = Student.withDetails(
    name: 'Ali',
    grade: 86,
    email: 'ali@gmail.com',
    phone: '123-456-7890',
  );

  // 5. Adding students to the list
  students.addAll([student1, student2, student3]);

  print('📋 Students Before Changes:\n');
  printStudentDetails(students);

  // Sort by grade descending ---
  students.sort((a, b) => (b.grade ?? 0).compareTo(a.grade ?? 0));

  // 6. change student details
  student1.email = 'zainab@gmail.com';
  student1.address = 'Main St';

  student2.email = 'ali123@gmail.com';
  student2.phone = '098503928';

  student3.email = 'ali123@gmail.com';
  student3.address = '123 Main St';

  print('\n📋 Students After Changes:\n');
  printStudentDetails(students);

  print('\n🔍 Students with grade > 90:\n');
  searchStudentsByGrade(students, 90, greater: true);

  print('\n🔍 Students with grade < 90:\n');
  searchStudentsByGrade(students, 90, greater: false);
}

// 8. Print student details
void printStudentDetails(List<Student> students) {
  for (var student in students) {
    print(student);
  }
}

// 7. Searching students based on grade
void searchStudentsByGrade(List<Student> students, double grade, {bool greater = true}) {
  for (var student in students) {
    final g = student.grade ?? -1;
    if ((greater && g > grade) || (!greater && g < grade)) {
      print(student);
    }
  }
}
