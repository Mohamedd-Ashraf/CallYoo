import 'package:chat/colors.dart';
import 'package:chat/common/widgets/myButton.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  Country? _country;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    phoneController.dispose();
  }

  void showCountries() {
    showCountryPicker(
        context: context,
        //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
        exclude: <String>['IL'],
        favorite: <String>['EG'],
        //Optional. Shows phone code before the country name.
        showPhoneCode: true,
        onSelect: (Country country) {
          setState(() {
            _country = country;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: const Text(
            'Enter your phone number',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height / 60,
                    ),
                    const Text(
                      'WhatsApp will need to verify your phone number.',
                    ),
                    SizedBox(
                      height: size.height / 30,
                    ),
                    TextButton(onPressed: showCountries, child: const Text('Pick Country')),
                    // SizedBox(
                    //   height: size.height / 30,
                    // ),

                    Row(
                      children: [
                        if(_country!=null)
                         Text(
                          '+${_country!.phoneCode }',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: size.width / 70,
                        ),
                        SizedBox(
                          width: size.width * 0.7,
                          child: TextField(
                            controller: phoneController,
                            decoration: const InputDecoration(
                              hintText: 'Please enter your phone',
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: tabColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: size.width/3),
                    child: MyButton(text: "Next", onPressedFunction: (){}),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
