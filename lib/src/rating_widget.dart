import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final List<String> itemList;
  final String selecteItem;
  final Function act;
  const RatingWidget(
      {super.key,
      required this.itemList,
      required this.selecteItem,
      required this.act});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      spacing: 6,
      children: itemList
          .map((e) => InkWell(
                onTap: () {
                  act(e);
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: const Color(0xff797979)),
                    color: e == selecteItem ? Colors.black : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      e,
                      style: TextStyle(
                          color:
                              e == selecteItem ? Colors.white : Colors.black),
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
