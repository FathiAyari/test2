import 'package:flutter/material.dart';
import 'package:jetpack/User.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();
  final Key _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                  child: TextFormField(
                controller: controller,
                maxLines: 5,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return " field is reqquired";
                  }
                },
                decoration: InputDecoration(
                    focusedErrorBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.red)),
                    errorBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.red)),
                    enabledBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.blue)),
                    // label: Text("Label"),
                    suffix: Icon(Icons.abc),
                    prefix: Icon(Icons.add),
                    hintStyle: TextStyle(color: Colors.blue),
                    //fillColor: Colors.cyan,
                    //filled: true,

                    hintText: "Hint"),
              )),
              CustomButton(() {})
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback myFunction;
  CustomButton(
    this.myFunction,
  );
  User user = User(name: "name", age: 21);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => myFunction(),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: Text(
          "Valider",
          style: TextStyle(color: Colors.white),
        ));
    ;
  }
}
