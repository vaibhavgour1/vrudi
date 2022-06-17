import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vrudi/ui/chat/chatroom/chatRoom.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with WidgetsBindingObserver {
  //to find app in which state
  TextEditingController serachController = TextEditingController();
  Map<String, dynamic>? userMap;
  bool loading = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    setStatus("Online");

    //with with help this we intilized WidgetsBindingObserver
    //
  }

  @override
  void didchangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      //user nai bg kerke app ko wapis forground mai laya ho online
      setStatus("Online");
    } else {
      //offline
      setStatus("Offline");
    }
  }
//jo ki hume wb observer provide kerta with help this we find the current state of the app

  void setStatus(String status) async {
    await _firestore.collection('users').doc(_auth.currentUser!.uid).update({
      "status": status,
    });
    // log("===>${_firestore.collection('users').doc(_auth.currentUser!.uid).get()}");
  }

  String chatRoomId(String user1, String user2) {
    if (user1[0].toLowerCase().codeUnits[0] > user2.toLowerCase().codeUnits[0]) {
      return "$user1$user2";
    } else {
      return "$user2$user1";
    }
  }

  void onSerach() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    setState(() {
      loading = true;
    });
    await _firestore.collection('users').where("email", isEqualTo: serachController.text).get().then((value) {
      setState(() {
        userMap = value.docs[0].data();
        loading = false;
      });
      print(userMap);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "User Search Screen",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                    controller: serachController,
                    onTap: () {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(242, 242, 242, 1),
                      counterText: "",
                      hintText: "Enter Email",
                      prefixIcon: const Icon(Icons.email, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      enabledBorder: const OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey)),

                      disabledBorder:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),

                      errorBorder:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                      focusedErrorBorder:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                      prefixIconConstraints:
                          const BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                      // errorText: Validator.validateMobile(edtMobile.text, context),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 50,
                  ),
                  ElevatedButton(
                    onPressed: onSerach,
                    child: Text("Search"),
                  ),
                  userMap != null
                      ? ListTile(
                          onTap: () {
                            //  log("_auth.currentUser!.displayName!${_auth.currentUser!.displayName!}");
                            String roomId = chatRoomId(_auth.currentUser!.displayName!, userMap!['name']);

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => ChatRoom(
                                  chatRoomId: roomId,
                                  userMap: userMap!,
                                ),
                              ),
                            );
                          },
                          leading: Icon(Icons.account_box, color: Colors.black),
                          title: Text(
                            userMap!['name'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(userMap!['email']),
                          trailing: Icon(Icons.chat, color: Colors.black),
                        )
                      : Container(),
                  // BlocConsumer(builder: ((context, state) {
                  //
                  // }), listener: (context, state) {})
                ],
              ),
            ),
      //   floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.group),
      //   onPressed: () => Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (_) => GroupChatHomeScreen(),
      //     ),
      //   ),
      // ),
    );
  }
}
