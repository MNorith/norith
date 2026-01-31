import 'package:flutter/material.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3F4F6),
        useMaterial3: true,
      ),
      home: const ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: SizedBox(
                width: 1100,
                child: Card(
                  elevation: 12,
                  shadowColor: Colors.black26,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // LEFT PANEL (NEW COLOR)
                        Container(
                          width: 320,
                          padding: const EdgeInsets.all(28),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF1E3A8A), // deep blue
                                Color(0xFF0F172A), // slate navy
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              // PROFILE IMAGE
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.orange,
                                    width: 2,
                                  ),
                                ),
                                child: const CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                      AssetImage('assets/e20221388.jpg'),
                                ),
                              ),

                              const SizedBox(height: 20),

                              const Text(
                                "MENG\nCHANNORITH",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2,
                                ),
                              ),

                              const SizedBox(height: 30),

                              leftTitle("CONTACT"),
                              leftText("📞 (+855) 99-512-899"),
                              leftText("📧 mengchannorith@gmail.com"),
                              leftText("📍 Phnom Penh"),

                              const SizedBox(height: 24),

                              leftTitle("SKILLS"),
                              leftBullet("Basic programming"),
                              leftBullet("CNC machine operation"),
                              leftBullet("Microsoft Office"),
                              leftBullet("Graphic Design"),

                              const SizedBox(height: 24),

                              leftTitle("LANGUAGES"),
                              leftBullet("English"),
                              leftBullet("French"),

                              const Spacer(),
                            ],
                          ),
                        ),

                        // RIGHT PANEL
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(36),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                rightTitle("About Me"),
                                rightText(
                                  "I'm a 4th-year Networking student with experience in "
                                  "network simulation and electronic projects. "
                                  "Hardworking, quick to learn, and a strong team "
                                  "player eager to apply my skills in a telecom internship.",
                                ),

                                rightTitle("Education"),
                                rightItem(
                                  "Institute of Cambodia of Technology",
                                  "Networking Fundamentals (OSI, TCP/IP, IP addressing)\n"
                                  "2023 – Present",
                                ),
                                rightItem(
                                  "Presisowat High School",
                                  "Graphic Design Certificate\n2019 – 2021",
                                ),

                                rightTitle("Experience"),
                                rightItem(
                                  "Graphic Designer & Laser Cutting",
                                  "Designed custom wedding logos using CorelDRAW\n"
                                  "Operated CNC machines\n2024 – 2025",
                                ),
                                rightItem(
                                  "Electronics Projects",
                                  "Temperature sensor & burglar alarm using Arduino simulation",
                                ),

                                rightTitle("Reference"),
                                rightText(
                                  "Dr. SRENG Sokchenda\n"
                                  "Head of Telecommunication & Network Engineering\n"
                                  "Institute of Technology of Cambodia\n"
                                  "📞 (+855) 12-407-910\n"
                                  "📧 sokchenda@itc.edu.kh",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // LEFT PANEL HELPERS
  static Widget leftTitle(String text) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            letterSpacing: 1,
          ),
        ),
      );

  static Widget leftText(String text) => Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white70),
        ),
      );

  static Widget leftBullet(String text) => Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Text(
          "• $text",
          style: const TextStyle(color: Colors.white70),
        ),
      );

  // RIGHT PANEL HELPERS
  static Widget rightTitle(String text) => Padding(
        padding: const EdgeInsets.only(top: 28, bottom: 12),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF111827),
          ),
        ),
      );

  static Widget rightText(String text) => Text(
        text,
        style: const TextStyle(fontSize: 15, height: 1.6),
      );

  static Widget rightItem(String title, String desc) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              desc,
              style: const TextStyle(fontSize: 14, height: 1.5),
            ),
          ],
        ),
      );
}
