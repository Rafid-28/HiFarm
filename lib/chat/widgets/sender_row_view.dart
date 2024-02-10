import 'package:flutter/material.dart';
import 'package:hi_farm/models/consultant.dart';
import '../global_members.dart';

class SenderRowView extends StatelessWidget {
  const SenderRowView({Key? key, required this.index, required this.product})
      : super(key: key);

  final int index;
  final Product product;

  @override
  Widget build(BuildContext context) {
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
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text(
            chatModelList.elementAt(index).message,
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),
            softWrap: true,
          ),
        ),
      ]),
      subtitle: const Padding(
        padding: EdgeInsets.only(right: 8, top: 4),
        child: Text(
          '10:03 AM',
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 10),
        ),
      ),
      trailing: CircleAvatar(
        backgroundImage: AssetImage(product.image),
      ),
    );
  }
}