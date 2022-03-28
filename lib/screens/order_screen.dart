import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tailor_chai_mobile_app/Constants/color_cons.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  var body = ['Small(34)', 'Medium(36)', 'Large(40)', 'XL(44)', 'XXL(48)'];
  var sleeve = [
    'Short(4)',
    'Medium(7)',
    'Three quarter(13)',
    'Four quarter(15)',
    'Full Sleeve(20)'
  ];
  var waist = ['Small(23)', 'Medium(25)', 'Large(28)', 'XL(32)', 'XXL(38)'];
  var kamijLength = [
    'Small(34)',
    'Medium(36)',
    'Large(40)',
    'XL(44)',
    'XXL(48)'
  ];
  var pantLength = ['Double XL', 'Extra Large', 'Large', 'Medium', 'Small'];
  var style = [
    'Normal Pant',
    'Bell Bottom pant',
    'Churidar',
    'Gharara',
    'palazo'
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Measurement",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ).paddingTop(20.0),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "You're here to put the sample of your measurement. You can just select the checkboxes according to you preference and then we'll proceed futrther.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  maxLines: 10,
                  textAlign: TextAlign.center,
                ).paddingTop(20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "Kamij",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  maxLines: 10,
                  textAlign: TextAlign.center,
                ).paddingTop(20.0),
              ),
            ],
          ),
          Divider(
            color: ColorConst.appTheme,
            thickness: 1.5,
          ).paddingOnly(left: 50, right: 50, bottom: 20),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              ItemDropDown(
                items: body,
                hintText: 'BODY (Inches)',
                errorText: "Please select sleeve",
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              ItemDropDown(
                items: body,
                hintText: 'SLEEVE (Inches)',
                errorText: "Please select sleeve",
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
            ],
          ).paddingBottom(20),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              ItemDropDown(
                items: waist,
                hintText: 'WAIST (Inches)',
                errorText: "Please select waist",
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              ItemDropDown(
                items: kamijLength,
                hintText: 'LENGTH (Inches)',
                errorText: "Please select length",
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
            ],
          ).paddingBottom(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "Pant",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  maxLines: 10,
                  textAlign: TextAlign.center,
                ).paddingTop(20.0),
              ),
            ],
          ),
          Divider(
            color: ColorConst.appTheme,
            thickness: 1.5,
          ).paddingOnly(left: 50, right: 50, bottom: 20),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              ItemDropDown(
                items: pantLength,
                hintText: 'LENGTH (Inches)',
                errorText: "Please select sleeve",
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              ItemDropDown(
                items: style,
                hintText: 'STYLE',
                errorText: "Please select sleeve",
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
            ],
          ).paddingBottom(40),
          ElevatedButton(
            onPressed: () {
              print("ok placing order :|");
              Fluttertoast.showToast(
                msg: "Thank you ! Your order has been placed",
                toastLength: Toast.LENGTH_SHORT,
                backgroundColor: Color.fromARGB(255, 79, 175, 55),
                gravity: ToastGravity.BOTTOM,
              );
            },
            child: Text(
              "Place Order",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(ColorConst.appTheme),
            ),
          )
        ],
      ),
    );
  }
}

class ItemDropDown extends StatefulWidget {
  List<String> items;
  String hintText;
  String errorText;
  ItemDropDown(
      {Key? key,
      required this.items,
      required this.hintText,
      required this.errorText})
      : super(key: key);

  @override
  State<ItemDropDown> createState() => _ItemDropDownState();
}

class _ItemDropDownState extends State<ItemDropDown> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButtonFormField2(
        decoration: InputDecoration(
          //Add isDense true and zero Padding.
          //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
          isDense: true,
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          //Add more decoration as you want here
          //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
        ),
        isExpanded: true,
        hint: Text(
          widget.hintText,
          style: TextStyle(fontSize: 14),
        ),
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ),
        iconSize: 30,
        buttonHeight: 60,
        buttonPadding: const EdgeInsets.only(left: 20, right: 10),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        items: widget.items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList(),
        validator: (value) {
          if (value == null) {
            return widget.errorText;
          }
        },
        onChanged: (value) {
          //Do something when changing the item if you want.
        },
        onSaved: (value) {
          selectedValue = value.toString();
        },
      ),
    );
  }
}
