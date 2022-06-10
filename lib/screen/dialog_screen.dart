
import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
   
  const DialogScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final textTheme= Theme.of(context).textTheme;
    return  Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: kToolbarHeight * 2),
                    const Text(
                      "Sign up"
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                          Checkbox(value: false, onChanged: (voild){} ),
                          const Text("I Agree to the"),
                          InkWell(
                            onTap: (){

                            },
                            child: const Text(
                              "Terms of services", 
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                              )
                              ),
                          ),
                         const Text(" & "),
                         const InkWell(
                            child: Text(
                              " Privacy Policy ", 
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                              )
                              )
                          ),
                      ]
                    ),
                    ]
                )
              ),

            ],
          )
        )
      ),
    );
  }
}