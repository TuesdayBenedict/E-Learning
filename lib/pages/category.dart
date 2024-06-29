import 'package:e_learning_app/constant/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List<String> categoryNavigation = ['All', 'Favourite', 'Recommended'];
  int currentIndex = 0;

  final List<Map<String, dynamic>> displayInformation = [
    {
      'title': 'Social Media Class',
      'course_no': '15 Course',
      'image': 'assets/images/illustration5.png',
      'color': const Color(0xffFFB4B4),
    },
    {
      'title': '3D Illustrations',
      'course_no': '10 Course',
      'image': 'assets/images/illustration11.png',
      'color': const Color(0xffB4FFE4),
    },
    {
      'title': 'AE Animation',
      'course_no': '25 Course',
      'image': 'assets/images/illustration2.png',
      'color': const Color(0xffFF6348),
    },
    {
      'title': 'AI Design Basic',
      'course_no': '35 Course',
      'image': 'assets/images/illustration9.png',
      'color': const Color(0xff1E90FF),
    },
    {
      'title': 'Copywriting',
      'course_no': '15 Course',
      'image': 'assets/images/illustration12.png',
      'color': const Color(0xffFFEEB4),
    },
    {
      'title': 'Basic Laravel',
      'course_no': '25 Course',
      'image': 'assets/images/illustration1.png',
      'color': const Color(0xffCCB4FF),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color01,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/arrow_left.svg',
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                        width: 24,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Category',
                        style: GoogleFonts.urbanist(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    'Ready to Learn',
                    style: GoogleFonts.urbanist(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Choose your subject.',
                    style: GoogleFonts.urbanist(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(33),
                    topRight: Radius.circular(33),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 20,
                      alignment: Alignment.centerLeft,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: categoryNavigation.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: Text(
                              categoryNavigation[index],
                              style: index == currentIndex
                                  ? GoogleFonts.urbanist(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                    )
                                  : GoogleFonts.urbanist(
                                      fontSize: 14,
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: MasonryGridView.count(
                          crossAxisCount: 2,
                          itemCount: displayInformation.length,
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                              color: light,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: displayInformation[index]['color']
                                    .withOpacity(0.5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 16,
                              ),
                              child: Column(
                                children: [
                                  index % 2 == 0
                                      ? categoryInformation(
                                          displayInformation:
                                              displayInformation,
                                          index: index,
                                        )
                                      : const SizedBox(),
                                  Image.asset(
                                    displayInformation[index]['image'],
                                    height: index % 2 == 0 ? 95 : 73,
                                  ),
                                  index % 2 != 0
                                      ? categoryInformation(
                                          displayInformation:
                                              displayInformation,
                                          index: index,
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                            ),
                          ),
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class categoryInformation extends StatelessWidget {
  const categoryInformation({
    super.key,
    required this.displayInformation,
    required this.index,
  });

  final List<Map<String, dynamic>> displayInformation;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            displayInformation[index]['title'],
            style: GoogleFonts.urbanist(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: color03,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            displayInformation[index]['course_no'],
            style: GoogleFonts.inter(
              fontSize: 10,
              color: color03,
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
