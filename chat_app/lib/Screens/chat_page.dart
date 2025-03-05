import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';
  final ScrollController _controller = ScrollController();
  CollectionReference messages =
      FirebaseFirestore.instance.collection(KmessageCollection);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(kCreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<MessageModel> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(
              MessageModel.fromJson(snapshot.data!.docs[i]),
            );
          }
          return Scaffold(
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imgPath,
                    height: 50,
                  ),
                  Text(
                    'Chat',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                    ),
                  )
                ],
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messagesList.length,
                    controller: _controller,
                    itemBuilder: (context, index) {
                      return messagesList[index].id == email ? ChatBubble(
                        message: messagesList[index],
                      ) : ChatBubbleForFriend(message: messagesList[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    controller: controller,
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      hintText: 'Send Message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.send,
                            color: kPrimaryColor), // Change color if needed
                        onPressed: () {
                          String data = controller.text.trim();
                          if (data.isNotEmpty) {
                            messages.add(
                              {
                                Kcontent: data,
                                kCreatedAt: FieldValue.serverTimestamp(),
                                'email': email
                              },
                            );
                            controller.clear();
                            _controller.animateTo(
                              0,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.decelerate,
                            );
                          }
                        },
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return Scaffold(
            body: Center(
              child: Text('Loading'),
            ),
          );
        }
      },
    );
  }
}
