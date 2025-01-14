import 'package:callaneducation/homepage.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.yellow.shade400,
      appBar: AppBar(backgroundColor: Colors.yellow,
        title: const Center(child: Text("Callan Education",style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Center(
                child: SizedBox(
                    width: 200,
                    height: 100,
                    /*decoration: BoxDecoration(
						color: Colors.red,
						borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/logo1.png')),
              ),
            ),
           const SizedBox(height: 20,),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone number, email or username',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),

            SizedBox(
              height: 65,
              width: 360,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  child: const Text( 'Log in ', style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage(),),);
                  },

                ),
              ),
            ),

            const SizedBox(
              height: 50,
            ),
            Center(
              child: Row(
                children: [

                  const Padding(
                    padding: EdgeInsets.only(left: 62),
                    child: Text('Forgot your login details? '),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:1.0),
                    child: InkWell(
                        onTap: (){

                        },
                        child: const Text('Get help logging in.', style: TextStyle(fontSize: 14, color: Colors.blue),)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


