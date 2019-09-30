import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(fontFamily: 'Roboto'), home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(0),
          color: Color.fromARGB(247, 247, 247, 247),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  width: ScreenUtil.getInstance().width,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 50, 25, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.account_circle,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.textsms,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 20, 0, 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                                text: 'Repayment',
                                style: TextStyle(
                                    fontSize: 30, fontFamily: 'Roboto')),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin:
                EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(500)),
            width: ScreenUtil.getInstance().setWidth(900),
            child: CurrentAmountDue(),
          ),
        )
      ],
    );
  }
}

class CurrentAmountDue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(15, 25, 0, 0),
                          child: RichText(
                            text: TextSpan(
                                text: 'Current Amount Due',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: RichText(
                            text: TextSpan(
                                text: '\$874.00',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: RichText(
                              text: TextSpan(
                                  text: 'Payment Date',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: RichText(
                              text: TextSpan(
                                  text: '2019- 25-09',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.fromLTRB(0, 10, 15, 0),
                            child: RichText(
                              text: TextSpan(
                                  text: 'Payment Amount',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 15, 0),
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(
                                  text: '\$562.00',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(15, 25, 0, 0),
                          child: RichText(
                            text: TextSpan(
                                text: 'Bank Card',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(15, 10, 0, 15),
                          child: RichText(
                            text: TextSpan(
                                text: 'Last 4 digits: 0927',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        ),
        Wrap(
          children: <Widget>[
            SizedBox(
              width: ScreenUtil.instance.width,
              child: FlatButton(
                onPressed: () {},
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: RichText(
                  text: TextSpan(
                      text: 'Make Payment',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
