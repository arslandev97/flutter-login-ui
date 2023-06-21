import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,

      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      },
      activeColor: Colors.white,
      checkColor: const Color(0xff71adf5),
    );
  }
}

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        unselectedWidgetColor: Colors.white,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff71adf5),
          body: Column(
            children: [
              const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 70, bottom: 10),
                    child: Text("Sign In", style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: "Pacific",
                      fontWeight: FontWeight.bold,
                    ),),
                  )
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30, bottom: 10),
                      child: Text("Email", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        color: const Color(0xff71adf5),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 25,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),

                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your Email',
                          hintStyle: const TextStyle(color: Colors.white54),
                          fillColor: const Color(0xff71adf5),
                          filled: true,
                          prefixIcon: const Icon(Icons.email, color: Colors.white,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.transparent, width: 2.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.transparent, width: 2.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30, bottom: 10),
                      child: Text("Password", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        color: const Color(0xff71adf5),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 25,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),

                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your Password',
                          hintStyle: const TextStyle(color: Colors.white54),
                          fillColor: const Color(0xff71adf5),
                          filled: true,
                          prefixIcon: const Icon(Icons.lock, color: Colors.white,),
                          suffixIcon: const Icon(Icons.visibility_off, color: Colors.white,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.transparent, width: 2.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.transparent, width: 2.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(right: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?", style: TextStyle(
                      color: Colors.white70,
                      decoration: TextDecoration.underline,
                    ),),
                  ],
                ),
              ),

              Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 10),
                      child: Row(
                        children: [
                          MyWidget(),
                          const Text("Remember me", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),

                      child: const Center(
                        child: Text("LOGIN",  style: TextStyle(
                          color: Color(0xff71adf5),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        children: [
                          Text("- OR -", style: TextStyle(
                            color: Colors.white70,
                          ),),
                          SizedBox(height: 20,),
                          Text("Sign in with", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                              image: AssetImage('./images/fb_logo.png'),
                            width: 60,
                          ),
                        SizedBox(width: 60,),
                        Image(
                          image: AssetImage('./images/google_logo.png'),
                          width: 60,
                        ),
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text("Don't Have an Account?", style: TextStyle(
                                color: Colors.white,
                              ),),
                              Text(" Sign Up", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
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
    );
  }
}
