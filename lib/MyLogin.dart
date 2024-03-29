import 'package:flutter/material.dart';
import 'Utils.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}
class _MyLoginState extends State<MyLogin> {
  bool _obscurePassword=true;
  bool isChecked = false;

  final TextEditingController  usernameController=TextEditingController();
  final TextEditingController  passwordController=TextEditingController();
  Utils ob=Utils();
  void validate(){
    final String Nic=usernameController.text;
    final String password=passwordController.text;
    if(Nic.isEmpty & password.isNotEmpty )
    {
      ob.showToast('Enter Username');
    }
    else if(password.isEmpty & Nic.isNotEmpty){
      ob.showToast('Enter password');
    }
    else if(Nic.isEmpty & password.isEmpty){
      ob.showToast('Enter Username and password');

    }
    else if(Nic!='4120197224915' || password!='Fayaz1234')
    {
      ob.showToast('Enter valid Password or Username');
    }
    else if(Nic=='4120197224915' && password=='Fayaz1234')
    {
      ob.showToast('Successfully loged in');
    }
  }


// late box box1;

  @override
  void initState() {
    //
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.orange.shade300,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Welcome Virtual \nInternship',
                style: TextStyle(color: Colors.black, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery
                        .of(context)
                        .size
                        .height * 0.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            controller: usernameController,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Username",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: passwordController,
                            style: TextStyle(),
                            obscureText: _obscurePassword,
                            decoration: InputDecoration(
                                suffixIcon:  InkWell(
                                  onTap: () {
                                    setState(() {
                                      _obscurePassword = !_obscurePassword;
                                    });
                                  },
                                  child: Icon(
                                    _obscurePassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(onPressed: (){
                            validate();
                          },style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20), backgroundColor: Colors.blue[900],
                          ), child:Text('Sign in',style: TextStyle(color: Colors.black),)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Remember Me",
                                style: TextStyle(color: Colors.black),),
                              Checkbox(
                                value: isChecked,
                                onChanged: (value) {
                                  isChecked = !isChecked;
                                  setState(() {

                                  });
                                },
                              ),
                              TextButton(onPressed: (){}, child:Text('Forgotten Password?',style: TextStyle(fontSize: 22,color: Colors.blue),))

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Dont have an account'),
                              TextButton(onPressed: (){}, child:Text('Register',style: TextStyle(fontSize: 22,color: Colors.blue),))
                            ],
                          ),





                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void login() {
    if (isChecked) {
      //  box1.put('email', email.text);
      //box1.put('password', password.text);
    }
  }
}

