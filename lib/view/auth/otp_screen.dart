import 'package:flutter/material.dart';
import 'package:goljaam_education/model/components/pinput_widget.dart';
import 'package:goljaam_education/model/global/global.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  final otpController = TextEditingController();
  final nameController = TextEditingController();
  final familyController = TextEditingController();
  final String phoneNumber;
  final bool isLogin;
  OtpScreen({super.key, required this.phoneNumber, required this.isLogin});

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
              'لطفا کد ارسال شده را وارد کنید',
              style: GoogleFonts.notoNaskhArabic(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: blackColor,
              ),
            ),
            Text(
              'Enter otp code please',
              style: GoogleFonts.dosis(
                fontSize: 15,
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            PinputWidget(pinController: otpController),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Visibility(
                  visible: !isLogin,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          controller: nameController,
                          cursorColor: blackColor,
                          cursorWidth: 1,
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              label: const Text('Name'),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              alignLabelWithHint: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor)),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          controller: familyController,
                          cursorColor: blackColor,
                          cursorWidth: 1,
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              label: const Text('Family'),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              alignLabelWithHint: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor)),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              )),
                        ),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 0.3,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: 150,
                    child: RawMaterialButton(
                      shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5)),
                      fillColor: primaryColor,
                      onPressed: () {
                        // loginOtp(
                        //   context: context,
                        //   body: TempUserDto(
                        //       phoneNumber: phoneNumber,
                        //       otp: otpController.text,
                        //       lname: familyController.text,
                        //       fname: nameController.text),
                        // );
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
