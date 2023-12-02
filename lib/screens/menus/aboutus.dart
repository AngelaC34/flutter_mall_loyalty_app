import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class AboutUsItem {
  AboutUsItem({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
  String headerText;
  String expandedText;
  bool isExpanded;
}

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final List<AboutUsItem> items = getAboutUsItems();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _AboutUsrender(),
      ),
    );
  }

  Widget _AboutUsrender() {
    return ExpansionPanelList(
      elevation: 0,
      dividerColor: borderColor,
      expandIconColor: buttonhiglightColor,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          items[index].isExpanded = isExpanded;
        });
      },
      children: items.map<ExpansionPanel>((AboutUsItem item) {
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

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

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
          'AboutUs',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: secondaryColor),
        ),
      ),
      body: SingleChildScrollView(child: AboutUs()),
    );
  }
}
