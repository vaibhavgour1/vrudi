import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'package:vrudi/utility/utilty.dart';

class ChatRoom extends StatelessWidget {
  final Map<String, dynamic> userMap;
  final String chatRoomId;

  ChatRoom({required this.chatRoomId, required this.userMap});

  final TextEditingController _message = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  File? imageFile;

  Future getImage() async {
    ImagePicker _picker = ImagePicker();

    await _picker.pickImage(source: ImageSource.gallery).then((xFile) {
      if (xFile != null) {
        imageFile = File(xFile.path);
        uploadImage();
      }
    });
  }

  Future uploadImage() async {
    String fileName = const Uuid().v1();
    int status = 1;
//image url ko save kerna kai collection bnaya hai doc filneme randome doc ko genrate nhi kerna chta taki
// value image milne kai bad update ker ske
    await _firestore.collection('chatroom').doc(chatRoomId).collection('chats').doc(fileName).set({
      "sendby": _auth.currentUser!.displayName,
      "message": "",
      "type": "img",
      "time": FieldValue.serverTimestamp(),
    });

    var ref = FirebaseStorage.instance.ref().child('images').child("$fileName.jpg");

    var uploadTask = await ref.putFile(imageFile!).catchError((error) async {
      await _firestore.collection('chatroom').doc(chatRoomId).collection('chats').doc(fileName).delete();

      status = 0;
    });

    if (status == 1) {
      String imageUrl = await uploadTask.ref.getDownloadURL();

      await _firestore
          .collection('chatroom')
          .doc(chatRoomId)
          .collection('chats')
          .doc(fileName)
          .update({"message": imageUrl});
      print("=======");
      print(imageUrl);
    }
  }

  void onSendMessage() async {
    if (_message.text.isNotEmpty) {
      Map<String, dynamic> message = {
        "sendby": _auth.currentUser!.displayName,
        "message": _message.text,
        "type": "text",
        "time": FieldValue.serverTimestamp(),
      };
      await _firestore.collection('chatroom').doc(chatRoomId).collection('chats').add(message);

      _message.clear();
    } else {
      Utility.showToast(msg: "Enter some text");
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: StreamBuilder<DocumentSnapshot>(
            stream: _firestore.collection("users").doc(userMap['uid']).snapshots(),
            builder: (context, snapshot) {
              if (snapshot.data != null) {
                return Container(
                  child: Column(
                    children: [
                      Text(userMap['name']),
                      Text(
                        userMap['status'],
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                );
              } else {
                return Container(
                  color: Colors.white,
                );
              }
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 1.25,
              width: size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: _firestore
                    .collection('chatroom')
                    .doc(chatRoomId)
                    .collection('chats')
                    .orderBy("time", descending: false)
                    .snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.data != null) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        // return Text(snapshot.data!.docs[index]['message']);
                        Map<String, dynamic> map = snapshot.data!.docs[index].data() as Map<String, dynamic>;
                        return messages(size, map, context);
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
            Container(
              height: size.height / 10,
              width: size.width,
              alignment: Alignment.center,
              child: Container(
                height: size.height / 12,
                width: size.width / 1.1,
                child: Row(
                  children: [
                    Container(
                      height: size.height / 17,
                      width: size.width / 1.3,
                      child: TextFormField(
                          controller: _message,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(onPressed: () => getImage(), icon: const Icon(Icons.photo)),
                            hintText: "Send Message",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red, width: 2),
                            ),
                            enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                          )),
                    ),
                    IconButton(onPressed: onSendMessage, icon: const Icon(Icons.send)),
                  ],
                ),
              ),
            ),
            // Container(
            //   height: size.height / 10,
            //   width: size.width,
            //   alignment: Alignment.center,
            //   child: Container(
            //     height: size.height / 12,
            //     width: size.width / 1.1,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Container(
            //           height: size.height / 17,
            //           width: size.width / 1.3,
            //           child: TextField(
            //             controller: _message,
            //             decoration: InputDecoration(
            //                 suffixIcon: IconButton(
            //                   onPressed: () => getImage(),
            //                   icon: Icon(Icons.photo),
            //                 ),
            //                 hintText: "Send Message",
            //                 border: OutlineInputBorder(
            //                   borderRadius: BorderRadius.circular(8),
            //                 )),
            //           ),
            //         ),
            //         IconButton(
            //             icon: Icon(Icons.send), onPressed: onSendMessage)
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget messages(Size size, Map<String, dynamic> map, BuildContext context) {
    return map['type'] == "text"
        ? Container(
            width: size.width,
            alignment: map['sendby'] == _auth.currentUser!.displayName ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red,
              ),
              child: Text(
                map['message'],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          )
        : Container(
            height: size.height / 2.5,
            width: size.width,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            alignment: map['sendby'] == _auth.currentUser!.displayName ? Alignment.centerRight : Alignment.centerLeft,
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ShowImage(
                    imageUrl: map['message'],
                  ),
                ),
              ),
              child: Container(
                height: size.height / 2.5,
                width: size.width / 2,
                decoration: BoxDecoration(border: Border.all()),
                alignment: map['message'] != "" ? null : Alignment.center,
                child: map['message'] != ""
                    ? Image.network(
                        map['message'],
                        fit: BoxFit.cover,
                      )
                    : CircularProgressIndicator(
                        color: Colors.red,
                      ),
              ),
            ),
          );
  }
}

class ShowImage extends StatelessWidget {
  final String imageUrl;
  const ShowImage({required this.imageUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      color: Colors.black,
      child: Image.network(imageUrl),
    ));
  }
}
