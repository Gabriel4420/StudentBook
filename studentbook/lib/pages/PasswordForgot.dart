import 'package:flutter/material.dart';
import 'package:studentbook/pages/Catalogo.dart';
import 'package:studentbook/pages/SignUp.dart';
import 'package:studentbook/widgets/EmailWidget.dart';
import 'package:studentbook/widgets/FormComponent.dart';

class PasswordForgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(8, 14, 0, 25),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, size: 24),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(14, 5, 0, 0),
                child: Text("Fogot password",
                    style: TextStyle(
                        fontSize: 34,
                        fontFamily: "Metropolis",
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF222222))),
              ),
              Container(
                width: 600,
                height: 200,
                margin: EdgeInsets.fromLTRB(14, 73, 14, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text("Please, enter your email address. You will receive a link to create a new password via email.",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Metropolis-Normal",
                        
                      ),
                    ),  
                    FormComponent(),
                
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.13),
                      offset: Offset(0, 4),
                      blurRadius: 13,
                    )
                  ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ButtonTheme(
                        height: 50.0,
                        minWidth: 305,
                        child: RaisedButton(
                          onPressed: () => {
                            Navigator.pushNamed(context, '/lib/pages/Catalogo')
                          },
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          child: Text(
                            "SEND",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Metropolis-Normal",
                                fontWeight: FontWeight.w600),
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ],
                  )),
           
            ],
          ),
        ));
  }
}
