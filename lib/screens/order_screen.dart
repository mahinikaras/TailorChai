import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tailor_chai_mobile_app/Constants/color_cons.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  late CollectionReference orders;
  @override
  void initState() {
    super.initState();
    initializeFirebase();
  }

  void initializeFirebase() async {
    await Firebase.initializeApp();
    orders = FirebaseFirestore.instance.collection("Orders");
  }

  String kamijBodyValue = "";
  String kamijLengthValue = "";
  String kamijSleeveValue = "";
  String kamijWaistValue = "";
  String pantLengthValue = "";
  String pantStyleValue = "";

  void StoreDropDownValue(String fieldName, String value) {
    switch (fieldName) {
      case "kamijBodyValue":
        {
          kamijBodyValue = value;
        }
        break;
      case "kamijLengthValue":
        {
          kamijLengthValue = value;
        }
        break;
      case "kamijSleeveValue":
        {
          kamijSleeveValue = value;
        }
        break;
      case "kamijWaistValue":
        {
          kamijWaistValue = value;
        }
        break;
      case "pantLengthValue":
        {
          pantLengthValue = value;
        }
        break;
      case "pantStyleValue":
        {
          pantStyleValue = value;
        }
        break;
    }
  }

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
                errorText: "Please select BODY",
                StoreDropDownValue: StoreDropDownValue,
                dropDownName: "kamijBodyValue",
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              ItemDropDown(
                items: body,
                hintText: 'SLEEVE (Inches)',
                errorText: "Please select sleeve",
                StoreDropDownValue: StoreDropDownValue,
                dropDownName: "kamijSleeveValue",
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
                StoreDropDownValue: StoreDropDownValue,
                dropDownName: "kamijWaistValue",
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              ItemDropDown(
                items: kamijLength,
                hintText: 'LENGTH (Inches)',
                errorText: "Please select length",
                StoreDropDownValue: StoreDropDownValue,
                dropDownName: "kamijLengthValue",
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
                StoreDropDownValue: StoreDropDownValue,
                dropDownName: "pantLengthValue",
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              ItemDropDown(
                items: style,
                hintText: 'STYLE',
                errorText: "Please select sleeve",
                StoreDropDownValue: StoreDropDownValue,
                dropDownName: "pantStyleValue",
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

              orders.add({
                "kamijBody": kamijBodyValue,
                "kamijLength": kamijLengthValue,
                "kamijSleeve": kamijSleeveValue,
                "kamijWaist": kamijWaistValue,
                "pantLength": pantLengthValue,
                "pantStyle": pantStyleValue,
              });
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
  Function StoreDropDownValue;
  String dropDownName;
  ItemDropDown({
    Key? key,
    required this.items,
    required this.hintText,
    required this.errorText,
    required this.StoreDropDownValue,
    required this.dropDownName,
  }) : super(key: key);

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
          print("onChnaged called : $value");
          widget.StoreDropDownValue(widget.dropDownName, value);
        },
        onSaved: (value) {
          selectedValue = value.toString();
          print("onSave Called : $value");
        },
      ),
    );
  }
}
