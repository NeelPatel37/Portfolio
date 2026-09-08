import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabWeb extends StatefulWidget {
  final title;

  const TabWeb(this.title, {super.key});

  @override
  State<TabWeb> createState() => _TabWebState();
}

class _TabWebState extends State<TabWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 300),
        style: isSelected
            ? GoogleFonts.oswald(
                fontStyle: FontStyle.normal,
                fontSize: 25,
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationThickness: 2.0,
              )
            : GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white38,
              ),

        child: Text(
          widget.title,
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ContactDetailsText extends StatefulWidget {
  final text, icon;

  const ContactDetailsText(this.text, this.icon, {super.key});

  @override
  State<ContactDetailsText> createState() => _ContactDetailsTextState();
}

class _ContactDetailsTextState extends State<ContactDetailsText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: Row(
        children: [
          Icon(widget.icon, color: Colors.white),
          SizedBox(width: 10.0),
          Text(
            widget.text,
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.normal,
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class HeadingOpenSansText extends StatefulWidget {
  final headingTitle;

  const HeadingOpenSansText(this.headingTitle, {super.key});

  @override
  State<HeadingOpenSansText> createState() => _HeadingOpenSansTextState();
}

class _HeadingOpenSansTextState extends State<HeadingOpenSansText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.headingTitle,
      style: GoogleFonts.openSans(
        fontWeight: FontWeight.bold,
        fontSize: 35.0,
        color: Colors.white,
      ),
    );
  }
}

class SkillWebText extends StatefulWidget {
  final skill;

  const SkillWebText(this.skill, {super.key});

  @override
  State<SkillWebText> createState() => _SkillWebTextState();
}

class _SkillWebTextState extends State<SkillWebText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        border: Border.all(
          color: Colors.red,
          style: BorderStyle.solid,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.skill,
          style: GoogleFonts.openSans(fontSize: 14.0, color: Colors.white),
        ),
      ),
    );
  }
}

class SkillMobileTextState extends StatefulWidget {
  final skill;

  const SkillMobileTextState(this.skill, {super.key});

  @override
  State<SkillMobileTextState> createState() => _SkillMobileTextStateState();
}

class _SkillMobileTextStateState extends State<SkillMobileTextState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(
          color: Colors.red,
          width: 2.0,
          style: BorderStyle.solid,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        child: Text(
          widget.skill,
          style: GoogleFonts.openSans(fontSize: 14.0, color: Colors.white),
        ),
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final deviceHeight, deviceWidth, projectTitle, projectDescription;

  const ProjectCard(
    this.deviceWidth,
    this.deviceHeight,
    this.projectTitle,
    this.projectDescription, {
    super.key,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.deviceHeight,
      width: widget.deviceWidth,
      child: Card(
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(14.0),
        ),
        shadowColor: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 75.0,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage("assets/profile_photo.jpg"),
              ),
            ),

            Spacer(),
            Text(
              widget.projectTitle,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),

            Spacer(),

            Text(
              widget.projectDescription,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),

            Spacer(),
          ],
        ),
      ),
    );
  }
}
