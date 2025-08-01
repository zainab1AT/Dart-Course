class Student {
  static int _idCounter = 0;
  //1. Attributes
  String? _name;
  double? _grade;
  String? _email;
  String? _address;
  String? _phone;
  final int _id;

  //2. Constructor
  Student(String name, double grade)
    : _id = ++_idCounter,
      _name = name,
      _grade = _validateGradeOrThrow(grade);
  Student.withDetails({
    required String? name,
    required double? grade,
    String? email,
    String? address,
    String? phone,
  }) : _id = ++_idCounter,
       _name = name,
       _grade = grade != null ? _validateGradeOrThrow(grade) : null,
       _email = email,
       _address = address,
       _phone = phone;

  //3. Getters
  int? get id => _id;
  String? get name => _name;
  double? get grade => _grade;
  String? get email => _email;
  String? get address => _address;
  String? get phone => _phone;

  //Setters
  set name(String? name) => _name = name;
  set email(String? email) => _email = email;
  set address(String? address) => _address = address;
  set phone(String? phone) => _phone = phone;

  set grade(double? grade) {
    if (grade == null || !_validateGrade(grade)) {
      throw ArgumentError('Grade must be between 0 and 100');
    }
    _grade = grade;
  }

  static double _validateGradeOrThrow(double grade) {
    if (grade < 0 || grade > 100) {
      throw ArgumentError('Grade must be between 0 and 100');
    }
    return grade;
  }

  static bool _validateGrade(double grade) {
    return grade >= 0 && grade <= 100;
  }

  bool isPassed() => (_grade ?? 0) >= 60;

  @override
  String toString() {
    return '''
  Student Info:
  ID: $_id
  Name: ${_name ?? "N/A"}
  Grade: ${_grade?.toStringAsFixed(2) ?? "N/A"}
  Email: ${_email ?? "N/A"}
  Address: ${_address ?? "N/A"}
  Phone: ${_phone ?? "N/A"}''';
  }
}
