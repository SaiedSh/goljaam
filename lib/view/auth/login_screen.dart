import 'package:flutter/material.dart';
import 'package:goljaam_education/controller/api_controllers/auth_controller/login_controller.dart';
import 'package:goljaam_education/controller/routes/routes.dart';
import 'package:goljaam_education/model/global/global.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visible = true;
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            SizedBox(
                width: 140, child: Image.asset('lib/assets/images/logo.png')),
            const SizedBox(
              height: 55,
            ),
            Text(
              'لطفا اطلاعات خود را وارد کنید',
              style: GoogleFonts.notoNaskhArabic(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: blackColor,
              ),
            ),
            Text(
              'Enter your information please',
              style: GoogleFonts.dosis(
                fontSize: 15,
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 250,
              height: 60,
              child: TextFormField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  setState(() {
                    visible = true;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter userName';
                  }
                  return null;
                },
                controller: userName,
                cursorColor: blackColor,
                cursorWidth: 1,
                decoration: InputDecoration(
                    hintStyle: GoogleFonts.dosis(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                    hintText: 'Username',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 250,
              height: 60,
              child: TextFormField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  setState(() {
                    visible = true;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter password';
                  }
                  return null;
                },
                controller: password,
                cursorColor: blackColor,
                cursorWidth: 1,
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.dosis(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 0.3,
                    color: Colors.grey,
                  ),
                ),
                Visibility(
                  replacement: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      width: 150,
                      child: RawMaterialButton(
                        onPressed: () {},
                        shape: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: primaryColor,
                        child: LoadingAnimationWidget.fourRotatingDots(
                            color: Colors.white, size: 20),
                      ),
                    ),
                  ),
                  visible: visible,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      width: 150,
                      child: RawMaterialButton(
                        shape: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: primaryColor,
                        onPressed: () async {
                          setState(() {
                            visible = false;
                          });
                          login(
                                  userName: userName.text,
                                  password: password.text,
                                  context: context)
                              .then(
                            (value) {
                              Navigator.pushNamed(
                                context,
                                MyRoutes.login,
                              );
                            },
                          );
                          // final token = 'accessToken';
                          // Provider.of<AuthProvider>(context, listen: false)
                          //     .login(token);
                        },
                        child: Text(
                          'Enter',
                          style: GoogleFonts.dosis(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: Divider(
                    thickness: 0.3,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Row(
              children: [Expanded(child: Divider())],
            )
          ],
        ),
      ),
    );
  }
}
