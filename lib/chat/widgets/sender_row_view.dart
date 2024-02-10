import 'package:flutter/material.dart';
import 'package:hi_farm/chat/ChatMessagesModel.dart';
import 'package:hi_farm/models/user.dart';

import '../global_members.dart';

class SenderRowView extends StatelessWidget {
  const SenderRowView({Key? key, required this.index, required this.user})
      : super(key: key);

  final int index;
  final User user;

  @override
  Widget build(BuildContext context) {
    // Check if the index is within the valid range
    if (index < 0 || index >= chatModelList.length) {
      // You can return an empty container or handle this case as needed
      return Container();
    }

    // Extract the chat model for the given index
    final ChatModel chatModel = chatModelList[index];

    return ListTile(
      leading: Container(
        width: 50,
      ),
      visualDensity: VisualDensity.comfortable,
      title: Wrap(alignment: WrapAlignment.end, children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color(0xffD11C2D),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Text(
            chatModel.message,
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),
            softWrap: true,
          ),
        ),
      ]),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 8, top: 4),
        child: Text(
          '10:03 AM',
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 10),
        ),
      ),
      trailing: CircleAvatar(
        backgroundImage: AssetImage(user.profileImage),
      ),
    );
  }
}
