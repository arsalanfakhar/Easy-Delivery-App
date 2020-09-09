import 'package:easy_delivery/Config/applocalization.dart';
import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PaymentState();
  }
}

enum PaymentType { Cash, Online }
enum PaymentMethod { Payoneer, Paypal, Mastercard, Bank }

class PaymentState extends State<Payment> {
  PaymentType _paymentType = PaymentType.Cash;
  PaymentMethod _paymentMethod = PaymentMethod.Payoneer;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: ColorTheme.appbarcolor,
          title: Text(
            AppLocalizations.of(context).translate('p_'),
            style: TextStyle(
                fontSize: FontData.appbartitlesize, color: Colors.grey[700]),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 100.h, bottom: 10.h),
                  child: Text(
                    AppLocalizations.of(context).translate('p_type'),
                    style: TextStyle(fontSize: FontData.p2),
                  )),
              radioButtonsPaymentType(),
              Padding(
                  padding: EdgeInsets.only(top: 50.h, bottom: 10.h),
                  child: Text(
                    AppLocalizations.of(context).translate('p_method'),
                    style: TextStyle(fontSize: FontData.p2),
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 50.h, bottom: 10.h),
                  child: paymentMethodList()),
            ])),
        bottomNavigationBar: Container(
            //alignment: Alignment.center,

            height: 150.h,
            child: FlatButton(
              color: ColorTheme.c1,
              onPressed: () {
                dialogBox();
              },
              child: Text(
                AppLocalizations.of(context).translate('confirm_button'),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: FontData.p2,
                ),
              ),
            )),
      ),
    );
  }

  void dialogBox() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () {},
              child: Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0)), //this right here
                child: Container(
                  //height: 700.h,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                            Text(
                              AppLocalizations.of(context).translate('p_db_title'),
                              style: TextStyle(fontSize: FontData.p1),
                            ),
                            Divider(
                              height: 50.h,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40.w, vertical: 20.h),
                                child: Text(
                                  AppLocalizations.of(context).translate('p_db_text'),
                                  style: TextStyle(fontSize: FontData.p3),
                                )),
                            Divider(
                              height: 50.h,
                            )
                          ] +
                          List.generate(3, (index) => shareTile(index)) +
                          [
                            FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  AppLocalizations.of(context).translate('cnl_button'),
                                  style: TextStyle(
                                      color: Colors.red, fontSize: FontData.p2),
                                ))
                          ],
                    ),
                  ),
                ),
              ));
        });
  }

  Widget shareTile(int index) {
    List iconpath = ['whatsapp', 'email', 'copy'];

    List titles = ['WhatsApp', 'Direct message', 'Copy link'];
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListTile(
        leading: Image(
          image: AssetImage('icons/${iconpath[index]}.png'),
          width: 60.w,
          height: 60.h,
        ),
        title: Text(
          titles[index],
          style: TextStyle(fontSize: FontData.p4),
        ),
        onTap: () {},
      ),
    );
  }

  Widget radioButtonsPaymentType() {
    return Row(
      children: <Widget>[
        Expanded(
            child: ListTile(
          title: Text(
            AppLocalizations.of(context).translate('p_type1'),
            style: TextStyle(fontSize: FontData.p3),
          ),
          leading: Radio(
            activeColor: ColorTheme.c1,
            value: PaymentType.Cash,
            groupValue: _paymentType,
            onChanged: (PaymentType value) {
              setState(() {
                _paymentType = value;
              });
            },
          ),
        )),
        Expanded(
            child: ListTile(
          title: Text(
            AppLocalizations.of(context).translate('p_type2'),
            style: TextStyle(fontSize: FontData.p3),
          ),
          leading: Radio(
            activeColor: ColorTheme.c1,
            value: PaymentType.Online,
            groupValue: _paymentType,
            onChanged: (PaymentType value) {
              setState(() {
                _paymentType = value;
              });
            },
          ),
        )),
      ],
    );
  }

  Widget paymentMethodList() {
    return Container(
          width: 100.w,
          height: 600.h,
          foregroundDecoration: _paymentType == PaymentType.Cash ? BoxDecoration(
            color: Colors.grey,
            backgroundBlendMode: BlendMode.saturation,
          ):null,
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Payoneer',
                  style: TextStyle(fontSize: FontData.p4),
                ),
                leading: Image(
                  image: AssetImage('icons/payoneer.png'),
                  width: 50.w,
                  height: 50.h,
                ),
                trailing: Radio(
                  activeColor: ColorTheme.c1,
                  value: PaymentMethod.Payoneer,
                  groupValue: _paymentMethod,
                  onChanged: (PaymentMethod value) {
                    setState(() {
                      if(_paymentType==PaymentType.Online)
                      _paymentMethod = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Paypal',
                  style: TextStyle(fontSize: FontData.p4),
                ),
                leading: Image(
                  image: AssetImage('icons/paypal.png'),
                  width: 50.w,
                  height: 50.h,
                ),
                trailing: Radio(
                  activeColor: ColorTheme.c1,
                  value: PaymentMethod.Paypal,
                  groupValue: _paymentMethod,
                  onChanged: (PaymentMethod value) {
                    setState(() {
                      if(_paymentType==PaymentType.Online)
                      _paymentMethod = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Mastercard',
                  style: TextStyle(fontSize: FontData.p4),
                ),
                leading: Image(
                  image: AssetImage('icons/mastercard.png'),
                  width: 70.w,
                  height: 70.h,
                ),
                trailing: Radio(
                  activeColor: ColorTheme.c1,
                  value: PaymentMethod.Mastercard,
                  groupValue: _paymentMethod,
                  onChanged: (PaymentMethod value) {
                    setState(() {
                      if(_paymentType==PaymentType.Online)
                      _paymentMethod = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Bank',
                  style: TextStyle(fontSize: FontData.p4),
                ),
                leading: Image(
                  image: AssetImage('icons/bank.png'),
                  width: 50.w,
                  height: 50.h,
                ),
                trailing: Radio(
                  activeColor: ColorTheme.c1,
                  value: PaymentMethod.Bank,
                  groupValue: _paymentMethod,
                  onChanged: (PaymentMethod value) {
                    setState(() {
                      if(_paymentType==PaymentType.Online)
                      _paymentMethod = value;
                    });
                  },
                ),
              ),
            ],
          ),
        );
  }
}
