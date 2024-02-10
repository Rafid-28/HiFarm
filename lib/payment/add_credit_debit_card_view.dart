import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_farm/payment/color.dart';

class AddCreditDebitCardView extends StatefulWidget {
  const AddCreditDebitCardView({super.key});

  @override
  State<AddCreditDebitCardView> createState() => _AddCreditDebitCardViewState();
}

enum RoundButtonType {
  filledPrimary,
  textPrimary,
  // Add more button types if needed
}

class _AddCreditDebitCardViewState extends State<AddCreditDebitCardView> {
  int? mm;
  int? year;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.white,
      appBar: AppBar(
        backgroundColor: TColor.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/icons/back.png",
            width: 20,
            height: 20,
            color: TColor.secondaryText,
          ),
        ),
        title: Text(
          "Credit / Debit Card",
          style: TextStyle(color: TColor.primaryText, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RoundTextField(
                    title: "Card Number",
                    hitText: "Enter card number",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Expiry date",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: () {
                          openExpiryDate();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: TColor.primaryText.withOpacity(0.5),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${mm?.toString().padLeft(2, '0') ?? "MM"} / ${year ?? "YYYY"}",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 18,
                                ),
                              ),
                              Image.asset(
                                "assets/icons/bottom.png",
                                width: 15,
                                height: 15,
                                color: TColor.primaryText,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundTextField(
                    title: "Name on card",
                    hitText: "Enter name on card",
                  ),
                  SizedBox(
                    height: media.width * 0.07,
                  ),
                  RoundButton(
                    title: "Save Card",
                    onPressed: () {},
                    type: null,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "We accept",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      // ... (Your existing code for payment logos)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openExpiryDate() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: TColor.white,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 200,
                            child: CupertinoPicker.builder(
                              itemExtent: 40,
                              onSelectedItemChanged: (index) {
                                mm = index + 1;
                                setState(() {});
                              },
                              selectionOverlay: Container(
                                width: double.maxFinite,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color:
                                          TColor.secondaryText.withOpacity(0.2),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                              childCount: 12,
                              itemBuilder: (context, index) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${index + 1}",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: TColor.secondaryText,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 200,
                            child: CupertinoPicker.builder(
                              itemExtent: 40,
                              onSelectedItemChanged: (index) {
                                year = index + 2023;
                                setState(() {});
                              },
                              selectionOverlay: Container(
                                width: double.maxFinite,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color:
                                          TColor.secondaryText.withOpacity(0.2),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                              childCount: 15,
                              itemBuilder: (context, index) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${index + 2023}",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: TColor.secondaryText,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RoundButton(
                            title: "Cancel",
                            type: RoundButtonType.textPrimary,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: RoundButton(
                            title: "Done",
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            type: null,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class RoundTextField extends StatelessWidget {
  final String title;
  final String hitText;

  const RoundTextField({
    required this.title,
    required this.hitText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Your implementation for RoundTextField
    return Container(
        // Your implementation for RoundTextField
        );
  }
}

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const RoundButton({
    required this.title,
    required this.onPressed,
    Key? key,
    required type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Your implementation for RoundButton
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
