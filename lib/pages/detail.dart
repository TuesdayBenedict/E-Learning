import 'package:e_learning_app/constant/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final List<Map<String, dynamic>> lessons = [
    {
      'time': '1:10min',
      'title': '00 - Trailer',
      'image': 'assets/images/illustration10.png',
      'color': const Color(0xff5352ed),
    }
  ];

  final List<Map<String, dynamic>> lockedLessons = [
    {
      'time': '15:10min',
      'title': '01 - Shape',
      'image': 'assets/images/illustration6.png',
      'color': const Color(0xffCCB4FF),
    },
    {
      'time': '22:56min',
      'title': '02 - Coloring',
      'image': 'assets/images/illustration4.png',
      'color': const Color(0xffFF7B02),
    },
    {
      'time': '22:45min',
      'title': '03 - Typography',
      'image': 'assets/images/illustration8.png',
      'color': const Color(0xffCCB4FF),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/image_container.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(
                              'assets/icons/arrow_left.svg',
                              width: 24,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          const SizedBox(width: 19),
                          Text(
                            'Detail Course',
                            style: GoogleFonts.urbanist(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/icons/bookmark.svg',
                        width: 24,
                        fit: BoxFit.scaleDown,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    '3D Illustration Course',
                    style: GoogleFonts.urbanist(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'by Tuesday Benedict',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '12 Lessons',
                            style: GoogleFonts.urbanist(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: color03,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/time_circle.svg',
                                width: 12,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                '1hr 20min',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: color03,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'This course will be teach the basic how to star 3D from beginning to finish. 12 Lessons more than 1 hour.',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: color03,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: lessons.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: LessonItem(
                              lessons: lessons,
                              index: index,
                              locked: false,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: lockedLessons.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: LessonItem(
                              lessons: lockedLessons,
                              index: index,
                              locked: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LessonItem extends StatelessWidget {
  const LessonItem({
    super.key,
    required this.lessons,
    required this.index,
    required this.locked,
  });

  final List<Map<String, dynamic>> lessons;
  final int index;
  final bool locked;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
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
              color: locked
                  ? lessons[index]['color'].withOpacity(0.2)
                  : lessons[index]['color'],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    lessons[index]['image'],
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(56),
                      color: const Color(0xffF0EEFF).withOpacity(0.85),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/play.svg',
                      width: 14,
                      height: 12,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            lessons[index]['time'],
                            style: GoogleFonts.inter(
                              fontSize: 10,
                              color: color03,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            lessons[index]['title'],
                            style: GoogleFonts.urbanist(
                              fontSize: 14,
                              color: locked && index != 0
                                  ? color03.withOpacity(0.5)
                                  : color03,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      locked
                          ? SvgPicture.asset(
                              'assets/icons/lock.svg',
                              width: 24,
                              colorFilter: ColorFilter.mode(
                                index == 0 ? color03 : color03.withOpacity(0.5),
                                BlendMode.srcIn,
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: const Color(0xffF0EEFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
