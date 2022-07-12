import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vrudi/ui/clientinputform/clein_form_state.dart';

import '../../utility/colors.dart';
import '../../utility/sharedpref.dart';

class ProfesionalForm extends StatefulWidget {
  const ProfesionalForm({Key? key}) : super(key: key);

  @override
  _ProfesionalFormState createState() => _ProfesionalFormState();
}

class _ProfesionalFormState extends State<ProfesionalForm> {
  // ProfesionalFormBloc ProfesionalFormBloc = ProfesionalFormBloc();
  TextEditingController organizationController = TextEditingController();
  TextEditingController typeOrganizationController = TextEditingController();
  TextEditingController permanentAddresController = TextEditingController();
  TextEditingController contactNameController = TextEditingController();
  TextEditingController organizationmailController = TextEditingController();
  TextEditingController personalEmailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController contactPersonController = TextEditingController();
  TextEditingController dateofRegController = TextEditingController();
  TextEditingController gstNumberController = TextEditingController();
  TextEditingController panNumberController = TextEditingController();
  TextEditingController bankaccountController = TextEditingController();
  TextEditingController IfscController = TextEditingController();
  TextEditingController banknameController = TextEditingController();
  TextEditingController openingBalanceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // return BlocProvider<ClientFormBloc>(
    //   create: (context) => clientFormBloc,
    //   child:
     return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(children: [
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: organizationController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Organization Name",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.temple_hindu_sharp, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: typeOrganizationController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Type of Organization",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.menu_open, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: permanentAddresController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Permanent Address",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.location_on_outlined, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: contactNameController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Client Name",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.person_pin, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: organizationmailController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Organisation Mail",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.attach_email, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: personalEmailController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Personal Email",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.person, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: mobileNumberController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.phone_android, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: contactPersonController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Contact person Mobile Number",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.phone_iphone_sharp, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: dateofRegController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Date of Reg",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.calendar_today_sharp, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: gstNumberController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "GST Number",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.person_add_alt_1, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: panNumberController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Pan Number",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.person_add_alt_1, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: bankaccountController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Bank Account Number",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.account_balance, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: IfscController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "IFSC Code",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.account_balance_wallet_outlined, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: banknameController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Bank Name",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.account_circle_outlined, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: openingBalanceController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Opening Balance",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                    prefixIcon: Icon(Icons.currency_rupee, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ])),
        ),
        // bottomNavigationBar: BlocConsumer<ClientFormBloc, ClientFormState>(
        //     bloc: clientFormBloc,
        //     listener: (context, state) async {
        //       if (state is ClientSuccessState) {
        //         Navigator.pushAndRemoveUntil(
        //             context, MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => true);
        //       }
        //       if (state is ClientFailureState) {
        //         Fluttertoast.showToast(
        //           msg: state.message,
        //           textColor: Colors.white,
        //           backgroundColor: ColorPrimary,
        //         );
        //       }
        //       if (state is ClientInitialState) {
        //         Container(
        //             height: MediaQuery.of(context).size.height * 0.70,
        //             child: Center(child: CircularProgressIndicator()));
        //       }
        //     },
        //     builder: (context, state) {
        //       return MaterialButton(
        //         onPressed: () {
        //           loginApiCall();
        //         },
        //         color: Colors.orange,
        //         height: 50,
        //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        //         child: const Text(
        //           "Update",
        //           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        //         ),
        //       );
        //     }),
      );
  //  );
  }

  loginApiCall() async {
    // if (username.isEmpty) {
    //   Utility.showToast(msg: "Please Enter userName");
    // } else if (password.isEmpty) {
    //   Utility.showToast(msg: "Please Enter Password");
    // } else {
    Map<String, dynamic> loginInput = Map<String, dynamic>();
    loginInput["id"] = await SharedPref.getStringPreference(SharedPref.VENDORID);
    loginInput["organisationName"] = organizationController.text;
    loginInput["organisationType"] = typeOrganizationController.text;
    loginInput["permanentAddress"] = permanentAddresController.text;
    loginInput["contactName"] = contactNameController.text;
    loginInput["organisationMail"] = organizationmailController.text;
    loginInput["personalEmail"] = personalEmailController.text;
    loginInput["mobileNumber"] = mobileNumberController.text;
    loginInput["contactPersonMobileNumber"] = contactPersonController.text;
    loginInput["registrationDate"] = "2022-05-26T14:06:01.756Z";
    loginInput["gstNumber"] = gstNumberController.text;
    loginInput["panNumber"] = panNumberController.text;
    loginInput["bankAccountNumber"] = bankaccountController.text;
    loginInput["ifscCode"] = IfscController.text;
    loginInput["bankName"] = banknameController.text;
    loginInput["openingBalance"] = openingBalanceController.text;

    //clientFormBloc.add(GetClientFormEvent(input: loginInput));
    //}
  }
}
