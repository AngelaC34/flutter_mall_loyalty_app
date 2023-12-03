// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class Item {
  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
  String headerText;
  String expandedText;
  bool isExpanded;
}

class Accordion extends StatefulWidget {
  const Accordion({super.key, required this.items});
  final List<Item> items;
  @override
  State<Accordion> createState() => _AccordionState(item: items);
}

class _AccordionState extends State<Accordion> {
    final List<Item> item;

  _AccordionState({required this.item});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: accordionRender(),
      ),
    );
  }

  Widget accordionRender() {
    return ExpansionPanelList(
      elevation: 0,
      dividerColor: borderColor,
      expandIconColor: buttonhiglightColor,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          item[index].isExpanded = isExpanded;
        });
      },
      children: item.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          backgroundColor: primaryColor,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              iconColor: buttonhiglightColor,
              tileColor: primaryColor,
              splashColor: primaryColor,
              title: Text(
                item.headerText,
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
            );
          },
          body: ListTile(
            iconColor: buttonhiglightColor,
            tileColor: primaryColor,
            splashColor: primaryColor,
            title: Text(
              item.expandedText,
              style: TextStyle(
                  color: texthighlightColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
