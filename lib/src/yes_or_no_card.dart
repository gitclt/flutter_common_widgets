import 'package:flutter/material.dart';

class YesOrNoCard extends StatelessWidget {
  final List<String> itemList;
  final String selecteItem;
  final Function act;

  const YesOrNoCard(
      {super.key,
      required this.itemList,
      required this.selecteItem,
      required this.act});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 10,
        direction: Axis.horizontal,
        children: itemList
            .map(
              (e) => SizedBox(
                width: 98,
                child: InkWell(
                  onTap: () {
                    act(e);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: e == selecteItem
                                  ? const Color(0xFFE81C25)
                                  : const Color(0xFFBDE8EE)),
                          child: Center(
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: e == selecteItem
                                      ? Colors.white
                                      : const Color(0xFFBDE8EE)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(e)
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
