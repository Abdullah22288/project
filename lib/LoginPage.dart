import 'package:flutter/material.dart';
import 'package:project/RegUI.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name="";
  bool changeButton=false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context)async{
    if (_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.push(context, MaterialPageRoute(builder: (context) => RegUI()));
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Form(
            key: _formKey,
          child:   Column(
            children: [
      Image.asset("assets/33.jpg",
        fit: BoxFit.cover,
      ),
        SizedBox(
          height: 20,
        ),
      Text("WelCome $name",style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold),),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 30.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide:BorderSide(width: 8)),
                hintText: "Enter Your Name",
                labelText: 'User Name',
              ),
            validator: (value){
                if(value!.isEmpty){
                  return "Please Type Your Name";
                   }
                },
              onChanged: (value){
                name = value;
                setState(() {});
                },
            ),
            SizedBox(height: 20,),
            TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide:BorderSide(width: 8)),
                    hintText: "Enter Password Minimum 6 Character",
                    labelText: 'Password',
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return"Password can not be empty";
                    }
                    else if(value.length<6){
                      return "Please Type Your Password ";
                    }
                    return null;
                  },
                ),],),),
              SizedBox(
        height: 20,
      ),
              InkWell(
        onTap: ()=>moveToHome(context),
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          width: changeButton ?50:100,
          height: 50,
          alignment: Alignment.center,
          child:changeButton?Icon(Icons.done,color: Colors.white,):
          Text(
            "Login",
            style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
          ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton ?50:8)
                        ),
                ),
              ),
            ],
          ),
            ),
            );
  }
}
