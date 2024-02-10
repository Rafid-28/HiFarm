import 'package:flutter/material.dart';
import 'package:hi_farm/chat/chat_screen.dart';
import 'package:hi_farm/models/consultant.dart';
import '../global_members.dart';

class ReceiverRowView extends StatelessWidget {
  const ReceiverRowView({Key? key, required this.index, required this.product})
      : super(key: key);

  final int index;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CircleAvatar(
          backgroundImage: AssetImage(product.image),
        ),
      ),
      title: Wrap(children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text(
            chatModelList.elementAt(index).message,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ]),
      trailing: Container(
        width: 50,
      ),
      subtitle: const Padding(
        padding: EdgeInsets.only(left: 8, top: 4),
        child: Text('8:04 AM', style: TextStyle(fontSize: 10)),
      ),
    );
  }
}
