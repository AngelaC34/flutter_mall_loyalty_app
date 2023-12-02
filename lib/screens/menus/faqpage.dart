import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class FaQItem {
  FaQItem({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
  String headerText;
  String expandedText;
  bool isExpanded;
}

List<FaQItem> getFaqItems() {
  return [
    FaQItem(
      headerText: 'What is Central Park Mall?',
      expandedText:
          'Central Park Mall is a premier shopping and lifestyle destination located in Jakarta, Indonesia. It offers a diverse range of retail outlets, dining options, entertainment facilities, and more, making it a popular choice for locals and tourists alike.',
    ),
    FaQItem(
      headerText: 'Where is Central Park Mall located??',
      expandedText:
          'Central Park Mall is situated in the western part of Jakarta, specifically in the Tanjung Duren Selatan sub-district. The address is Jl. Letjen S. Parman Kav. 28, Jakarta 11470, Indonesia.',
    ),
    FaQItem(
      headerText: "How can I get to Central Park Mall?",
      expandedText:
          "Central Park Mall is easily accessible by car, public transportation, and even by foot for those in the nearby areas. The mall provides ample parking space and is well-connected via various transportation options.",
    ),
    FaQItem(
      headerText: 'What kind of stores does Central Park Mall have?',
      expandedText:
          'Central Park Mall boasts a diverse range of stores, including fashion boutiques, electronics shops, beauty salons, bookstores, and more. International and local brands are both represented, offering visitors a wide variety of choices.',
    ),
    FaQItem(
      headerText: "Is there a kids' play area in Central Park Mall?",
      expandedText:
          "Yes, the mall has a dedicated kids' play area where children can have fun and engage in various activities. It's a family-friendly destination with something for everyone.",
    ),
    FaQItem(
      headerText:
          'Can I find a currency exchange service at Central Park Mall?',
      expandedText:
          "Yes, Central Park Mall provides currency exchange services for the convenience of international visitors. However, it's advisable to check the rates and availability in advance.",
    ),
  ];
}

class FaQ extends StatefulWidget {
  const FaQ({Key? key}) : super(key: key);
  @override
  State<FaQ> createState() => _FaQState();
}

class _FaQState extends State<FaQ> {
  final List<FaQItem> items = getFaqItems();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _faqrender(),
      ),
    );
  }

  Widget _faqrender() {
    return ExpansionPanelList(
      elevation: 0,
      dividerColor: borderColor,
      expandIconColor: buttonhiglightColor,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          items[index].isExpanded = isExpanded;
        });
      },
      children: items.map<ExpansionPanel>((FaQItem item) {
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

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: buttonhiglightColor,
        ),
        title: Text(
          'FAQ',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: secondaryColor),
        ),
      ),
      body: SingleChildScrollView(child: FaQ()),
    );
  }
}
