
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_interview/src/view/screen/auth/login_controller.dart';
import 'package:test_interview/src/view/screen/user/all_user.dart';
import 'package:test_interview/src/view/widget/customTextfield.dart';
import 'package:test_interview/src/view/widget/k_Text.dart';
import 'package:test_interview/src/view/widget/validator.dart';

class LoginPage extends StatelessWidget {
 LoginPage({Key? key,}) : super(key: key);

 final LoginController _controller = Get.put(LoginController());

 final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),

                    Container(
                      child: Obx(() =>
                      _controller.isValid.value ?  Image.asset("images/login_error_picture.png",height: 186,fit: BoxFit.cover,):Image.asset("images/login_upper_picture.png" ,height: 186,fit: BoxFit.cover,)
                   ),
                    ),

               SizedBox(
                      height: 20,
                    ),
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                KText(text: "Login Details",fontSize: 24,fontWeight: FontWeight.bold,),
            ],
    ),
                   SizedBox(
                     height: 10,
                   ),

                    SignUpTextField(
                      controller: _controller.usernameController,
                      hintText: "Username , email & phone number",
                      validator:Validators.emailValidator,
                    ),
                    PasswordTextboxWidget(
                      controller: _controller.passwordController,
                      hintText: "Password",
                      isPassword: true,


                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      KText(text: "Forgot Password ?")
                    ],
                  ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(onPressed: (){

                            if (formKey.currentState!.validate()) {
                                print("Login");
                                Get.to(AllUserPage());
                            }else{
                              print("false");
                              _controller.validateForm();

                            }

                    },
                    minWidth: Get.width,
                      color: Colors.blue,
                      height: 50,
                      child: KText(text: "Login",color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),),

                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 2,
                          color: Colors.blue,
                          width: 84,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        KText(text: "Or Sign up With"),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 2,
                          width: 84,
                          color: Colors.blue,
                        ),
                      ],
                    ),



                  ],
                ),
              ),
            ),
            Stack(
              children: [

                Image.asset("images/buttom_picture.png",fit:BoxFit.cover,),

                Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8),
                       child: Container(
                           padding: EdgeInsets.all(10),

                           decoration: BoxDecoration(
                             color: Colors.grey[200],
                             borderRadius: BorderRadius.circular(100)
                           ),
                           child: Image.asset("images/Google.png",fit:BoxFit.cover,)),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8),
                       child: Container(
                           padding: EdgeInsets.all(10),

                           decoration: BoxDecoration(
                               color: Colors.grey[200],
                               borderRadius: BorderRadius.circular(100)
                           ),
                           child:    Image.asset("images/Facbook.png",fit:BoxFit.cover,),),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8),
                       child: Container(
                           padding: EdgeInsets.all(10),

                           decoration: BoxDecoration(
                               color: Colors.grey[200],
                               borderRadius: BorderRadius.circular(100)
                           ),
                           child:  Image.asset("images/apple.png",fit:BoxFit.cover,),),
                     ),
                     


                   ],

                  ),
                ))
              ],
            )
          ],
        ),
      )
    );
  }
}
