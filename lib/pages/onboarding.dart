import 'package:e_learning_app/constant/pallete.dart';
import 'package:e_learning_app/pages/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _controller = PageController();
  final List<Map<String, String>> pages = [
    {
      'text_up_dark': 'Let\'s Begin',
      'text_up_color': 'Growing',
      'text_bottom': 'Our Skills',
      'paragraph':
          'The complete App to start learning new skill and growing your skill.',
    },
    {
      'text_up_dark': 'Let\'s Begin',
      'text_up_color': 'Growing',
      'text_bottom': 'Our Skills',
      'paragraph':
          'The complete App to start learning new skill and growing your skill.',
    },
    {
      'text_up_dark': 'Let\'s Begin',
      'text_up_color': 'Growing',
      'text_bottom': 'Our Skills',
      'paragraph':
          'The complete App to start learning new skill and growing your skill.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color01,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 25,
                    right: -110,
                    child: Container(
                      height: 255,
                      width: 255,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: const Color(0xFF735EFB),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 50,
                    left: -110,
                    child: Container(
                      height: 255,
                      width: 255,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: const Color.fromARGB(255, 115, 94, 251),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                          ),
                          child: Image.asset(
                            'assets/images/illustration7.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 24,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: pages.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              text: TextSpan(
                                style: GoogleFonts.urbanist(
                                  fontSize: 32,
                                ),
                                children: [
                                  TextSpan(
                                    text: '${pages[index]['text_up_dark']} ',
                                  ),
                                  TextSpan(
                                    text: '${pages[index]['text_up_color']} ',
                                    style: GoogleFonts.urbanist(
                                      color: color01,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              '${pages[index]['text_bottom']} ',
                              style: GoogleFonts.urbanist(
                                fontSize: 32,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width /
                                    100 *
                                    20,
                              ),
                              child: Text(
                                '${pages[index]['paragraph']} ',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: color03,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SmoothPageIndicator(
                        controller: _controller,
                        count: pages.length,
                        effect: const ExpandingDotsEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          activeDotColor: color01,
                          expansionFactor: 3,
                        ),
                      ),
                      SizedBox(
                        height: 57,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CategoryPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 64,
                            ),
                            backgroundColor: color01,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
