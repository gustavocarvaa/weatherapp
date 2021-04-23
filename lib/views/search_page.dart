import 'package:flutter/material.dart';
import 'package:weatherapp/utils/widgets/confirm_button.dart';
import 'package:weatherapp/utils/widgets/title.dart';
import 'package:weatherapp/utils/widgets/search_field.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 30),
          ),
          // Image(image: null),
          MainTitle(title: 'Search Weather'),
          SizedBox(height: 8),
          Subtitle(text: 'Instantly'),
          SizedBox(height: 30),
          SearchField(controller: _textEditingController, hintText: 'City Name'),
          SizedBox(height: 20),
          ConfirmButton(
            title: 'Search',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
