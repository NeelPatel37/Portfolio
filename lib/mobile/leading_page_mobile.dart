import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/common/component_web.dart';
import 'package:url_launcher/url_launcher.dart';

class LeadingPageMobile extends StatefulWidget {
  const LeadingPageMobile({super.key});

  @override
  State<LeadingPageMobile> createState() => _LeadingPageMobileState();
}

class _LeadingPageMobileState extends State<LeadingPageMobile> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(size: 25.0, color: Colors.white),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.grey.withValues(alpha: 0.35),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 54.0,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        radius: 52.0,
                        backgroundImage: AssetImage("assets/profile_photo.jpg"),
                      ),
                    ),

                    SizedBox(height: 20.0),

                    Text(
                      "Neel Patel",
                      style: GoogleFonts.openSans(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.home, color: Colors.white, size: 34.0),
                          SizedBox(width: 20.0),
                          Text(
                            "Home",
                            style: GoogleFonts.openSans(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.black.withValues(alpha: 0.3),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 34.0,
                          ),
                          SizedBox(width: 18.0),
                          Text(
                            "About Us",
                            style: GoogleFonts.openSans(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.black.withValues(alpha: 0.3),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.home, color: Colors.white, size: 34.0),
                          SizedBox(width: 20.0),
                          Text(
                            "Project",
                            style: GoogleFonts.openSans(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.black.withValues(alpha: 0.3),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.person, color: Colors.white, size: 34.0),
                          SizedBox(width: 20.0),
                          Text(
                            "Contact Us",
                            style: GoogleFonts.openSans(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(
                              'https://github.com/NeelPatel37',
                            );

                            await launchUrl(
                              url,
                              mode: LaunchMode.platformDefault,
                            );
                          },
                          icon: Image.asset(
                            "assets/github.png",
                            color: Colors.white,
                            scale: 1.8,
                          ),
                        ),

                        IconButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(
                              'https://www.linkedin.com/in/neel-patel-b04830224/',
                            );

                            await launchUrl(
                              url,
                              mode: LaunchMode.platformDefault,
                            );
                          },
                          icon: Image.asset(
                            "assets/linkedin.png",
                            color: Colors.white,
                            scale: 1.8,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          //--------------------- Introduction -----------------
          SizedBox(
            height: heightDevice / 1.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 14.0,
                  ),
                  child: Text(
                    "Hello I'm",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(height: 20.0),

                Text(
                  "Android developer",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 20.0),

                Center(
                  child: Text(
                    "About Me",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 18.0,
                    ),
                  ),
                ),

                SizedBox(height: 20.0),

                Text(
                  "I’m an Android Developer with 3+ years of experience building high-performance, scalable, and user-friendly native Android applications. I specialize in **Kotlin, Java, Jetpack Compose, MVVM, Clean Architecture, Firebase, Room, Retrofit, and Coroutines.I enjoy turning ideas into reliable, modern mobile experiences with clean code, intuitive UI, and strong performance. I’m always learning new technologies and best practices to build better products.",
                  style: GoogleFonts.openSans(color: Colors.white),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20.0),

                Wrap(
                  spacing: 10.0,
                  runSpacing: 20.0,
                  children: [
                    SkillWebText("Android"),
                    SkillWebText("Flutter"),
                    SkillWebText("JetPack Compose"),
                    SkillWebText("Kotlin"),
                    SkillWebText("Dart"),
                    SkillWebText("C++"),
                  ],
                ),
              ],
            ),
          ),

          //--------------------- Project -----------------
          Column(
            children: [
              Center(
                child: Text(
                  "Project",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 18.0,
                  ),
                ),
              ),

              SizedBox(height: 20.0),

              Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                child: Card(
                  color: Colors.grey,
                  shadowColor: Colors.red,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 82.0,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 80.0,
                            backgroundImage: AssetImage(
                              "assets/profile_photo.jpg",
                            ),
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Text(
                          "VYB",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                          style: GoogleFonts.openSans(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10.0),

                        MaterialButton(
                          onPressed: () {},
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            "View Project",
                            style: GoogleFonts.openSans(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),

              Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                child: Card(
                  color: Colors.grey,
                  shadowColor: Colors.red,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 82.0,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 80.0,
                            backgroundImage: AssetImage(
                              "assets/profile_photo.jpg",
                            ),
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Text(
                          "VYB",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                          style: GoogleFonts.openSans(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10.0),

                        MaterialButton(
                          onPressed: () {},
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            "View Project",
                            style: GoogleFonts.openSans(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),

              Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                child: Card(
                  color: Colors.grey,
                  shadowColor: Colors.red,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 82.0,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 80.0,
                            backgroundImage: AssetImage(
                              "assets/profile_photo.jpg",
                            ),
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Text(
                          "VYB",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                          style: GoogleFonts.openSans(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10.0),

                        MaterialButton(
                          onPressed: () {},
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            "View Project",
                            style: GoogleFonts.openSans(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20.0),

          //---------------- Contact Us ----------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Contact Us",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 18.0,
                    ),
                  ),
                ),

                SizedBox(height: 10.0),

                //First Name
                Text(
                  "First Name",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 10.0),

                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: 0.2),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.red),
                    ),

                    hintText: "First Name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),

                  cursorColor: Colors.white,
                ),

                SizedBox(height: 10.0),

                //Last Name
                Text(
                  "Last Name",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 10.0),

                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: 0.2),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.red),
                    ),

                    hintText: "Last Name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),

                  cursorColor: Colors.white,
                ),

                SizedBox(height: 10.0),

                //Email
                Text(
                  "Email",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 10.0),

                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: 0.2),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText: "example@gmail.com",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  cursorColor: Colors.white,
                ),

                SizedBox(height: 10.0),

                //Email
                Text(
                  "Description",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 10.0),

                TextFormField(
                  maxLines: 6,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: 0.2),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText: "Enter your description.....",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  cursorColor: Colors.white,
                ),

                SizedBox(height: 15.0),

                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                    ),
                    child: Text(
                      "Submit",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
