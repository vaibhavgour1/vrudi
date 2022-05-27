// To parse this JSON data, do
//
//     final ClientFormResponse = ClientFormResponseFromMap(jsonString);

import 'dart:convert';

class ClientFormResponse {
  ClientFormResponse({
    required this.id,
    required this.organisationName,
    required this.organisationType,
    required this.permanentAddress,
    required this.contactName,
    required this.organisationMail,
    required this.personalEmail,
    required this.mobileNumber,
    required this.contactPersonMobileNumber,
    required this.registrationDate,
    required this.gstNumber,
    required this.panNumber,
    required this.bankAccountNumber,
    required this.ifscCode,
    required this.bankName,
    required this.openingBalance,
  });

  String id;
  String organisationName;
  String organisationType;
  String permanentAddress;
  String contactName;
  String organisationMail;
  String personalEmail;
  String mobileNumber;
  String contactPersonMobileNumber;
  String registrationDate;
  String gstNumber;
  String panNumber;
  String bankAccountNumber;
  String ifscCode;
  String bankName;
  String openingBalance;

  factory ClientFormResponse.fromJson(String str) => ClientFormResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClientFormResponse.fromMap(Map<String, dynamic> json) => ClientFormResponse(
        id: json["id"] == null ? "" : json["id"].toString(),
        organisationName: json["organisationName"] == null ? "" : json["organisationName"].toString(),
        organisationType: json["organisationType"] == null ? "" : json["organisationType"].toString(),
        permanentAddress: json["permanentAddress"] == null ? "" : json["permanentAddress"].toString(),
        contactName: json["contactName"] == null ? "" : json["contactName"].toString(),
        organisationMail: json["organisationMail"] == null ? "" : json["organisationMail"].toString(),
        personalEmail: json["personalEmail"] == null ? "" : json["personalEmail"].toString(),
        mobileNumber: json["mobileNumber"] == null ? "" : json["mobileNumber"].toString(),
        contactPersonMobileNumber:
            json["contactPersonMobileNumber"] == null ? "" : json["contactPersonMobileNumber"].toString(),
        registrationDate: json["registrationDate"] == null ? "" : json["registrationDate"].toString(),
        gstNumber: json["gstNumber"] == null ? "" : json["gstNumber"].toString(),
        panNumber: json["panNumber"] == null ? "" : json["panNumber"].toString(),
        bankAccountNumber: json["bankAccountNumber"] == null ? "" : json["bankAccountNumber"].toString(),
        ifscCode: json["ifscCode"] == null ? "" : json["ifscCode"].toString(),
        bankName: json["bankName"] == null ? "" : json["bankName"].toString(),
        openingBalance: json["openingBalance"] == null ? "" : json["openingBalance"].toString(),
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "organisationName": organisationName == null ? null : organisationName,
        "organisationType": organisationType == null ? null : organisationType,
        "permanentAddress": permanentAddress == null ? null : permanentAddress,
        "contactName": contactName == null ? null : contactName,
        "organisationMail": organisationMail == null ? null : organisationMail,
        "personalEmail": personalEmail == null ? null : personalEmail,
        "mobileNumber": mobileNumber == null ? null : mobileNumber,
        "contactPersonMobileNumber": contactPersonMobileNumber == null ? null : contactPersonMobileNumber,
        "registrationDate": registrationDate == null ? null : registrationDate,
        "gstNumber": gstNumber == null ? null : gstNumber,
        "panNumber": panNumber == null ? null : panNumber,
        "bankAccountNumber": bankAccountNumber == null ? null : bankAccountNumber,
        "ifscCode": ifscCode == null ? null : ifscCode,
        "bankName": bankName == null ? null : bankName,
        "openingBalance": openingBalance == null ? null : openingBalance,
      };
}
