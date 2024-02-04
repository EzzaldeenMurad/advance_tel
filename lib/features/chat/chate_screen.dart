import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  // late User signedInUser;
  final textEditingController = TextEditingController();
  String? messageText;

  // void getMessages() async { 
  //   await fireStore.collection('messages').snapshots().forEach((element) {
  //     element.docs.forEach((element) {
  //       print(element.data());
  //     });
  //   });
  // }

  // void addMessages() async {
  //   fireStore.collection('messages').add({
  //     'text': messageText,
  //     'sender': 'abod',
  //     'time': FieldValue.serverTimestamp(),
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        title: const Row(
          children: [
            // Image.asset('images/logo.png', height: 25),
            SizedBox(width: 10),
            Text('MessageMe')
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // add here logout function
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // messageStreamBuilder(),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (messageText != '') {
                              textEditingController.clear();
                              // getMessages();
                              // addMessages();
                              messageText = '';
                            }
                          },
                          child: const Icon(Icons.send_rounded),
                        ),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: TextField(
                            onChanged: (value) {
                              messageText = value;
                            },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 16.0),
                              hintText: 'اكتب رسالتك هنا...',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16.0,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            style: const TextStyle(fontSize: 16.0),
                            textDirection: TextDirection.rtl,
                            maxLines: null,
                            controller: textEditingController,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        const Icon(Icons.attach_file),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // messageStreamBuilder() {
  //   return StreamBuilder<QuerySnapshot>(
  //     stream: fireStore.collection('messages').orderBy('time').snapshots(),
  //     builder: (context, snapshot) {
  //       List<Widget> wessageWidgets = [];

  //       if (!snapshot.hasData) {
  //         return CircularProgressIndicator();
  //       }
  //       snapshot.data!.docs.reversed.forEach((message) {
  //         final messageText = message.get('text');
  //         final messageSender = message.get('sender');
  //         // final currentUser = signedInUser.email;
  //         final messageWidget = messageLine(
  //             text: messageText,
  //             sender: messageSender,
  //             isMe: messageSender == 'abod');
  //         wessageWidgets.add(messageWidget);
  //       });
  //       return Expanded(
  //         child: ListView(
  //           reverse: true,
  //           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
  //           children: wessageWidgets,
  //         ),
  //       );
  //     },
  //   );
  // }

  messageLine({text, sender, isMe}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text('$sender'),
          Material(
            elevation: 5,
            borderRadius: isMe
                ? const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))
                : const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
            color: isMe ? Colors.blue[800] : Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                '$text',
                style: TextStyle(
                  color: isMe ? Colors.white : Colors.black45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
