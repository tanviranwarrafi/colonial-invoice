import 'package:colonial_invoice/common/components/header.dart';
import 'package:colonial_invoice/common/components/text-field-materials.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/controllers/home-controller.dart';
import 'package:colonial_invoice/screens/home-components.dart';
import 'package:colonial_invoice/screens/invoice-components.dart';
import 'package:colonial_invoice/services/validators.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InvoiceScreen extends StatefulWidget {
  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  HomeController controller = HomeController();
  HomeController value = HomeController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    controller = Provider.of<HomeController>(context, listen: false);
    value = Provider.of<HomeController>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    bool isWeb = Responsive.isDesktop(context);
    Validators validators = Validators();
    final name = TextFormField(
      controller: controller.nameController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).unfocus(),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.nameController.text = text,
    );
    final date = TextFormField(
      controller: controller.dateController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.dateController.text = text,
    );

    final driverLic = TextFormField(
      controller: controller.driverLicController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.driverLicController.text = text,
    );

    final phone = TextFormField(
      controller: controller.phoneController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.phoneController.text = text,
    );

    final address = TextFormField(
      controller: controller.addressController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.addressController.text = text,
    );

    final email = TextFormField(
      controller: controller.emailController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.emailController.text = text,
    );

    final paidAmount = TextFormField(
      controller: controller.paidAmountController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.paidAmountController.text = text,
    );

    final balance = TextFormField(
      controller: controller.balanceController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.balanceController.text = text,
    );

    final vin = TextFormField(
      controller: controller.vinController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.vinController.text = text,
    );

    final cash = TextFormField(
      controller: controller.cashController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.cashController.text = text,
    );

    final card = TextFormField(
      controller: controller.cardController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.cardController.text = text,
    );

    final licence = TextFormField(
      controller: controller.licencePlateController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.licencePlateController.text = text,
    );

    final state = TextFormField(
      controller: controller.stateController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.stateController.text = text,
    );

    final expiration = TextFormField(
      controller: controller.expirationController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.expirationController.text = text,
    );

    final odometer = TextFormField(
      controller: controller.odometerController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.odometerController.text = text,
    );

    final year = TextFormField(
      controller: controller.yearController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.yearController.text = text,
    );

    final make = TextFormField(
      controller: controller.makeController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.makeController.text = text,
    );

    final model = TextFormField(
      controller: controller.modelController,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      decoration: textFieldDecoration(),
      onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
      validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.modelController.text = text,
    );

    return Scaffold(
      body: Container(
        child: Responsive(
          mobile: Container(),
          desktop: Container(),
          tablet: Container(
            width: width,
            height: height,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: ColonialHeader()),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(top: block * 2, left: block * 2, right: block * 2),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black, width: 1.5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(block),
                            child: CustomerContactInfo(
                              title: 'CUSTOMER CONTACT INFORMATION',
                              image: Images.contact,
                            ),
                          ),
                        ),
                        SizedBox(width: block),
                        Container(width: 2, height: block * 10, color: Colors.black),
                        SizedBox(width: block),
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: EdgeInsets.all(block * 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'CUSTOMER NAME', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.nameController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'DATE', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.dateController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: block * 2),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'DRIVER LIC', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.driverLicController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'PHONE NO', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.phoneController,
                                              inputType: TextInputType.phone,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: block * 2),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InvoiceTitle(title: 'ADDRESS', isRequired: false),
                                    Flexible(
                                      child: CustomerTextField(
                                        controller: controller.addressController,
                                        inputType: TextInputType.text,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: block * 2),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 5,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'EMAIL', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.emailController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'AMOUNT PAID', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.paidAmountController,
                                              inputType: TextInputType.number,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'BALANCE', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.balanceController,
                                              inputType: TextInputType.number,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(left: block * 2, right: block * 2),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      // border: Border.all(color: Colors.black, width: 1.5),
                      border: Border(
                        left: BorderSide(color: Colors.grey, width: 1.5),
                        right: BorderSide(color: Colors.grey, width: 1.5),
                        bottom: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.all(block * 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 5,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'VIN #', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.vinController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'CASH', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.cashController,
                                              inputType: TextInputType.number,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'CARD', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.cardController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: block * 2),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'LICENCE PLATE', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.licencePlateController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'STATE', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.stateController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'EXPIRATION', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.expirationController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: block * 2),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'ODOMETER', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.odometerController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'YEAR', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.yearController,
                                              inputType: TextInputType.number,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'MAKE', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.makeController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: block),
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          InvoiceTitle(title: 'MODEL', isRequired: false),
                                          SizedBox(width: block),
                                          Flexible(
                                            child: CustomerTextField(
                                              controller: controller.modelController,
                                              inputType: TextInputType.text,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: block),
                        Container(width: 2, height: block * 10, color: Colors.black),
                        SizedBox(width: block),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(block),
                            child: CustomerContactInfo(title: 'VEHICLE INFORMATION', image: Images.car),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: block * 2, right: block * 2),
                    padding: EdgeInsets.all(block * 2),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        left: BorderSide(color: Colors.grey, width: 1.5),
                        right: BorderSide(color: Colors.grey, width: 1.5),
                        bottom: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                    child: RowTitle(title: 'SERVICE FEE', image: Images.dollar),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.only(left: block * 2, right: block * 2),
                    padding: EdgeInsets.all(block * 2),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        left: BorderSide(color: Colors.grey, width: 1.5),
                        right: BorderSide(color: Colors.grey, width: 1.5),
                        bottom: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: RowTitle(title: 'SMOG SERVICE FEE', image: Images.weather)),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TitleText(title: 'DESCRIPTION'),
                                    ),
                                    Expanded(
                                      child: titleText(context: context, title: 'AMOUNT'),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'SMOG TEST')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.smogTestController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'PRETEST')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.pretestController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'SMOG CERTIFICATE')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.smogCertificateController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'RETEST')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.retestController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'TOTAL', isBoldText: true)),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: true,
                                        controller: controller.totalSmogServiceFeeController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: RowTitle(title: 'DMV FEES', image: Images.dmv)),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'DESCRIPTION')),
                                    Expanded(
                                      child: titleText(context: context, title: 'AMOUNT'),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'REGISTRATION FEE')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.registrationFeeController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'TAXES')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.taxesController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'E.P.F')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.epfController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'CITATIONS')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.citationsController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'TOTAL', isBoldText: true)),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.totalDmvFeesController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: RowTitle(title: 'REGISTRATION FEES', image: Images.dmv)),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TitleText(title: 'DESCRIPTION'),
                                    ),
                                    Expanded(
                                      child: titleText(context: context, title: 'AMOUNT'),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'REGISTRATION SERVICE FEE')),
                                    Expanded(
                                        child: TitleInput(
                                      readOnly: false,
                                      controller: controller.registrationServiceFeeController,
                                    )),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'VIN VERIFICATION')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.vinVerificationController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'DAY PERMIT')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.dayPermitController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'Credit %2.5-Debit %1')),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.creditDebitController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TitleText(title: 'TOTAL', isBoldText: true)),
                                    Expanded(
                                      child: TitleInput(
                                        readOnly: false,
                                        controller: controller.totalRegistrationFeeController,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget titleText({BuildContext context, String title, bool left, bool right, bool top, bool bottom}) {
    var block = SizeConfig.block;
    return Container(
      padding: EdgeInsets.all(block),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          top: BorderSide(color: top == null ? Colors.transparent : Colors.grey, width: top == null ? 0 : 1.5),
          left: BorderSide(color: left == null ? Colors.transparent : Colors.grey, width: left == null ? 0 : 1.5),
          right: BorderSide(color: right == null ? Colors.transparent : Colors.grey, width: right == null ? 0 : 1.5),
          bottom: BorderSide(color: bottom == null ? Colors.transparent : Colors.grey, width: bottom == null ? 0 : 1.5),
        ),
      ),
      child: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: block * 2),
      ),
    );
  }
}
