import 'package:flutter/material.dart';
import 'package:hi_farm/chat/ChatMessagesModel.dart';
import 'package:hi_farm/chat/global_members.dart';
import 'package:hi_farm/chat/widgets/receiver_row_view.dart';
import 'package:hi_farm/chat/widgets/sender_row_view.dart';
import 'package:hi_farm/models/consultant.dart';
import 'package:hi_farm/models/user.dart';

class ChatScreen extends StatefulWidget {
  final String consultantName;
  final String consultantImage;

  const ChatScreen({
    Key? key,
    required this.consultantName,
    required this.consultantImage,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var controller = TextEditingController();
  var scrollController = ScrollController();
  var message = '';

  void animateList() {
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
    Future.delayed(const Duration(milliseconds: 100), () {
      if (scrollController.offset !=
          scrollController.position.maxScrollExtent) {
        animateList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle back button press
        Navigator.of(context).pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: Color.fromRGBO(223, 231, 218, 1),
        appBar: AppBar(
          elevation: 12,
          titleSpacing: 10,
          backgroundColor: Color.fromRGBO(117, 132, 103, 1),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              ),
            ),
          ),
          leadingWidth: 20,
          title: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(widget.consultantImage),
            ),
            title: Text(
              widget.consultantName,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'online',
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.videocam_rounded),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.call),
            ),
          ],
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ListView.builder(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                itemCount: chatModelList.length,
                itemBuilder: (context, index) {
                  if (chatModelList.elementAt(index).isMee) {
                    // If the message is from the sender
                    return SenderRowView(index: index, user: users[index]);
                  } else {
                    // If the message is from the receiver
                    return ReceiverRowView(
                        index: index, product: products[index]);
                  }
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12.0, left: 8),
                    child: Icon(
                      Icons.emoji_emotions_outlined,
                      color: Color.fromRGBO(117, 132, 103, 1),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      maxLines: 6,
                      minLines: 1,
                      keyboardType: TextInputType.multiline,
                      controller: controller,
                      onFieldSubmitted: (value) {
                        controller.text = value;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8),
                        border: InputBorder.none,
                        focusColor: Colors.white,
                        hintText: 'Type a message',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12, right: 10),
                    child: Transform.rotate(
                      angle: 45,
                      child: const Icon(
                        Icons.attachment_outlined,
                        color: Color.fromRGBO(117, 132, 103, 1),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        chatModelList.add(ChatModel(controller.text, true));
                        animateList();
                        controller.clear();
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        chatModelList.add(ChatModel(controller.text, false));
                        animateList();
                        controller.clear();
                      });
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 8, right: 8),
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(117, 132, 103, 1),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
