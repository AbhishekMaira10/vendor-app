import 'package:deldrone_vendor/src/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddFoodItem extends StatefulWidget {
  @override
  _AddFoodItemState createState() => _AddFoodItemState();
}

class _AddFoodItemState extends State<AddFoodItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 60),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Form(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    width: MediaQuery.of(context).size.width,
                    height: 135.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/noimage.png"),
                      ),
                    ),
                  ),
                  _buildTextFormField('Food Title'),
                  _buildTextFormField('Category'),
                  _buildTextFormField('Description', maxLine: 4),
                  _buildTextFormField('Price'),
                  _buildTextFormField('Discount'),
                  SizedBox(
                    height: 20.0,
                  ),
                  Button(
                    btnText: 'Add Food Item',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextFormField(String hint, {int maxLine = 1}) {
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(hintText: hint),
          maxLines: maxLine,
          keyboardType: hint == "Price" || hint == "Discount"
              ? TextInputType.number
              : TextInputType.text,
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}
