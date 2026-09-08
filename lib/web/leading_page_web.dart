import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/common/component_web.dart';

class LeadingPageWeb extends StatefulWidget {
  const LeadingPageWeb({super.key});

  @override
  State<LeadingPageWeb> createState() => _LeadingPageWebState();
}

class _LeadingPageWebState extends State<LeadingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    const Color customGreen = Color(0xFF3DDC84);

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(surfaceTintColor: Colors.white),
      appBar: AppBar(
        iconTheme: IconThemeData(size: 25.0, color: Colors.white),
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Spacer(flex: 3),
            TabWeb("Home"),
            Spacer(),
            TabWeb("About Me"),
            Spacer(),
            TabWeb("Projects"),
            Spacer(),
            TabWeb("Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //------------------------- Introduction -------------------------
          SizedBox(
            height: deviceHeight / 1.8,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14.0),
                              topRight: Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 10.0,
                            ),
                            child: Text(
                              "Hello I'm",
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Neel Patel",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Android Developer",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        ContactDetailsText(
                          "neelpatel0265@gmail.com",
                          Icons.email,
                        ),
                        ContactDetailsText("+91 9327075051", Icons.call),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 60.0),
                      child: CircleAvatar(
                        radius: 145.0,
                        backgroundColor: Colors.red,
                        child: CircleAvatar(
                          radius: 140.0,
                          backgroundImage: AssetImage(
                            "assets/profile_photo.jpg",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //------------------------- About Me -------------------------
          SizedBox(
            height: deviceHeight / 1.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 40.0),

                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.asset(
                      "assets/about_me.png",
                      height: deviceHeight / 2,
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HeadingOpenSansText("About Me"),

                      SizedBox(height: 40.0),

                      Text(
                        " I’m an Android Developer with 3+ years of experience building high-performance, scalable, and user-friendly native Android applications. I specialize in **Kotlin, Java, Jetpack Compose, MVVM, Clean Architecture, Firebase, Room, Retrofit, and Coroutines.I enjoy turning ideas into reliable, modern mobile experiences with clean code, intuitive UI, and strong performance. I’m always learning new technologies and best practices to build better products.",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 16.0),
                      Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: [
                          SkillWebText("Android"),
                          SkillWebText("Flutter"),
                          SkillWebText("Firebase"),
                          SkillWebText("JetPack Compose"),
                          SkillWebText("Kotlin"),
                          SkillWebText("Dart"),
                          SkillWebText("C++"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //------------------------- Project -------------------------
          SizedBox(
            height: deviceHeight / 1.3,
            child: Column(
              children: [
                HeadingOpenSansText("Projects"),

                SizedBox(height: 16.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProjectCard(
                      deviceWidth / 4,
                      deviceHeight / 2,
                      "VYB",
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                    ),
                    ProjectCard(
                      deviceWidth / 4,
                      deviceHeight / 2,
                      "VYB",
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                    ),
                    ProjectCard(
                      deviceWidth / 4,
                      deviceHeight / 2,
                      "VYB",
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                    ),
                  ],
                ),
              ],
            ),
          ),

          //------------------------ contact us ------------------------
          SizedBox(
            height: deviceHeight / 1.3,
            child: Column(children: [HeadingOpenSansText("Contact Us")]),
          ),
        ],
      ),
    );
  }
}
