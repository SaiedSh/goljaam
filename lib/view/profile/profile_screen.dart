import 'package:flutter/material.dart';
import 'package:goljaam_education/controller/api_controllers/profile/profile_controller.dart';
import 'package:goljaam_education/controller/providers/api_providers/profile_state.dart';
import 'package:goljaam_education/controller/routes/routes.dart';
import 'package:goljaam_education/model/global/global.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileGet(
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<ProfileState>(
          builder: (context, value, child) => Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: MediaQuery.of(context).size.height - 100,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              fit: BoxFit.fill,
                              "https://api.goljaam.com" +
                                  ProfileState.clientProfile!.imageUrl
                                      .toString(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          ProfileState.clientProfile!.fname.toString(),
                          style: GoogleFonts.dosis(
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                        Text(ProfileState.clientProfile!.lname.toString(),
                            style: GoogleFonts.dosis(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white)),
                        SizedBox(
                          height: 20,
                        ),
                        Text(ProfileState.clientProfile!.phoneNumber.toString(),
                            style: GoogleFonts.dosis(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80),
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            ProfileState.clientProfile!.gender!.value
                                .toString(),
                            style: GoogleFonts.dosis(
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                                color: Colors.white)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            MyRoutes.profileUpdate,
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Profile Update',
                                style: GoogleFonts.dosis(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: primaryColor)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
