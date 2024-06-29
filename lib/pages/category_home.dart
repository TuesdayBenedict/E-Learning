import 'package:e_learning_app/constant/pallete.dart';
import 'package:e_learning_app/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryHomePage extends StatefulWidget {
  const CategoryHomePage({super.key});

  @override
  State<CategoryHomePage> createState() => _CategoryHomePageState();
}

class _CategoryHomePageState extends State<CategoryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: ListView(
            children: [
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello, Welcome 👋',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: color03,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Tuesday Benedict',
                        style: GoogleFonts.urbanist(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: color03,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: Image.asset(
                      'assets/images/Profile.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Get Your ',
                style: GoogleFonts.urbanist(
                  fontSize: 32,
                  color: color03,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Best Course',
                      style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        color: color01,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: ' Today!',
                      style: GoogleFonts.urbanist(
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: light,
                ),
                padding: const EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/image_container.png',
                        height: MediaQuery.of(context).size.width,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: const Color(0xffF0EEFF),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/play.svg',
                            width: 14,
                            height: 12,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 24,
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '3D Illustration ',
                                style: GoogleFonts.urbanist(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  color: light,
                                ),
                              ),
                              Text(
                                'Course',
                                style: GoogleFonts.urbanist(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  color: light,
                                ),
                              ),
                              Text(
                                'By Tuesday Benedict',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: light,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 24,
                        right: 24,
                        child: SvgPicture.asset(
                          'assets/icons/bookmark.svg',
                          height: 24,
                          width: 24,
                          //fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Course of The Week',
                style: GoogleFonts.urbanist(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: color03,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: const Color(0xffB5B3C1).withOpacity(0.11),
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 84,
                      width: 84,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffFFA502),
                      ),
                      child: Image.asset(
                        'assets/images/illustration3.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3D Character Lumion',
                          style: GoogleFonts.urbanist(
                            fontSize: 14,
                            color: color03,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Duration: 1hr 20min',
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            color: color03,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 11.0),
                      child: SvgPicture.asset(
                        'assets/icons/arrow_right.svg',
                        width: 18,
                        colorFilter: const ColorFilter.mode(
                          color03,
                          BlendMode.srcIn,
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
