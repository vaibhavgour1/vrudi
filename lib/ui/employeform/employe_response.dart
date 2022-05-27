// // To parse this JSON data, do
// //
// //     final Employeeresponse = EmployeeresponseFromMap(jsonString);
//
// import 'dart:convert';
//
// class Employeeresponse {
//   Employeeresponse({
//     required this.id,
//     required this.employeeName,
//     required this.permanentAddress,
//     required this.currentAddress,
//     required this.gender,
//     required this.personalEmail,
//     required this.mobileNumber,
//     required this.emergencyContactNumber,
//     required this.dateOfBirth,
//     required this.aadhaarNumber,
//     required this.panNumber,
//     required this.bankAccountNumber,
//     required this.ifscCode,
//     required this.bankName,
//     required this.photo,
//     required this.aadhaarPhotoCopy,
//     required this.panCardPhotoCopy,
//     required this.basicSalary,
//     required this.hra,
//     required this.monthlyAllowances,
//     required this.salaryDueDate,
//     required this.employeeType,
//     required this.joiningDate,
//   });
//
//   String id;
//   String employeeName;
//   String permanentAddress;
//   String currentAddress;
//   String gender;
//   String personalEmail;
//   String mobileNumber;
//   String emergencyContactNumber;
//   String dateOfBirth;
//   String aadhaarNumber;
//   String panNumber;
//   String bankAccountNumber;
//   String ifscCode;
//   String bankName;
//   String photo;
//   String aadhaarPhotoCopy;
//   String panCardPhotoCopy;
//   String basicSalary;
//   String hra;
//   String monthlyAllowances;
//   String salaryDueDate;
//   String employeeType;
//   String joiningDate;
//
//   factory Employeeresponse.fromJson(String str) => Employeeresponse.fromMap(json.decode(str));
//
//   String toJson() => json.encode(toMap());
//
//   factory Employeeresponse.fromMap(Map<String, dynamic> json) => Employeeresponse(
//     id: json["id"] == null ? "" : json["id"].toString()),
//     employeeName: json["employeeName"] == null ? "" : json["employeeName"].toString(),
//     permanentAddress: json["permanentAddress"] == null ? "" : json["permanentAddress"].toString(),
//     currentAddress: json["currentAddress"] == null ? "" : json["currentAddress"].toString(),
//     gender: json["gender"] == null ? "" : json["gender"].toString(),
//     personalEmail: json["personalEmail"] == null ? "" : json["personalEmail".toString(),
//     mobileNumber: json["mobileNumber"] == null ? "" : json["mobileNumber"].toString(),
//     emergencyContactNumber: json["emergencyContactNumber"] == null ? "" : json["emergencyContactNumber"].toString(),
//     dateOfBirth: json["dateOfBirth"] == null ? "" : json["dateOfBirth"].toString(),
//     aadhaarNumber: json["aadhaarNumber"] == null ? "" : json["aadhaarNumber"].toString(),
//     panNumber: json["panNumber"] == null ? "" : json["panNumber"].toString(),
//     bankAccountNumber: json["bankAccountNumber"] == null ? "" : json["bankAccountNumber"].toString(),
//     ifscCode: json["ifscCode"] == null ? "" : json["ifscCode"].toString(),
//     bankName: json["bankName"] == null ? "" : json["bankName"].toString(),
//     photo: json["photo"] == null ? "" : json["photo"].toString(),
//     aadhaarPhotoCopy: json["aadhaarPhotoCopy"] == null ? "" : json["aadhaarPhotoCopy"].toString(),
//     panCardPhotoCopy: json["panCardPhotoCopy"] == null ? "" : json["panCardPhotoCopy"].toString(),
//     basicSalary: json["basicSalary"] == null ? "" : json["basicSalary"].toString(),
//     hra: json["hra"] == null ? "" : json["hra"].toString(),
//     monthlyAllowances: json["monthlyAllowances"] == null ? "" : json["monthlyAllowances"].toString(),
//     salaryDueDate: json["salaryDueDate"] == null ? "" : json["salaryDueDate"].toString(),
//     employeeType: json["employeeType"] == null ? "" : json["employeeType"].toString(),
//     joiningDate: json["joiningDate"] == null ? "" : json["joiningDate"].toString(),
//   );
//
//   Map<String, dynamic> toMap() => {
//     "id": id == null ? null : id,
//     "employeeName": employeeName == null ? null : employeeName,
//     "permanentAddress": permanentAddress == null ? null : permanentAddress,
//     "currentAddress": currentAddress == null ? null : currentAddress,
//     "gender": gender == null ? null : gender,
//     "personalEmail": personalEmail == null ? null : personalEmail,
//     "mobileNumber": mobileNumber == null ? null : mobileNumber,
//     "emergencyContactNumber": emergencyContactNumber == null ? null : emergencyContactNumber,
//     "dateOfBirth": dateOfBirth == null ? null : dateOfBirth.toMap(),
//     "aadhaarNumber": aadhaarNumber == null ? null : aadhaarNumber,
//     "panNumber": panNumber == null ? null : panNumber,
//     "bankAccountNumber": bankAccountNumber == null ? null : bankAccountNumber,
//     "ifscCode": ifscCode == null ? null : ifscCode,
//     "bankName": bankName == null ? null : bankName,
//     "photo": photo == null ? null : photo,
//     "aadhaarPhotoCopy": aadhaarPhotoCopy == null ? null : aadhaarPhotoCopy,
//     "panCardPhotoCopy": panCardPhotoCopy == null ? null : panCardPhotoCopy,
//     "basicSalary": basicSalary == null ? null : basicSalary,
//     "hra": hra == null ? null : hra,
//     "monthlyAllowances": monthlyAllowances == null ? null : monthlyAllowances,
//     "salaryDueDate": salaryDueDate == null ? null : salaryDueDate,
//     "employeeType": employeeType == null ? null : employeeType,
//     "joiningDate": joiningDate == null ? null : joiningDate.toMap(),
//   };
// }
//
// class DateOfBirth {
//   DateOfBirth({
//     this.year,
//     this.month,
//     this.day,
//     this.dayOfWeek,
//   });
//
//   int year;
//   int month;
//   int day;
//   int dayOfWeek;
//
//   factory DateOfBirth.fromJson(String str) => DateOfBirth.fromMap(json.decode(str));
//
//   String toJson() => json.encode(toMap());
//
//   factory DateOfBirth.fromMap(Map<String, dynamic> json) => DateOfBirth(
//     year: json["Year"] == null ? null : json["Year"],
//     month: json["Month"] == null ? null : json["Month"],
//     day: json["Day"] == null ? null : json["Day"],
//     dayOfWeek: json["DayOfWeek"] == null ? null : json["DayOfWeek"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "Year": year == null ? null : year,
//     "Month": month == null ? null : month,
//     "Day": day == null ? null : day,
//     "DayOfWeek": dayOfWeek == null ? null : dayOfWeek,
//   };
// }
