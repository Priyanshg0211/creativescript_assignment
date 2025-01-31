import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;
  final TextEditingController _searchController = TextEditingController();
  bool _isLoading = true; 

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            child: Image.asset(
              'assets/images/Background.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: screenHeight * 0.2,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Sleep',
                    style: TextStyle(
                      fontFamily: 'Onest',
                      fontSize: screenWidth * 0.08,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    'Sessions specially curated for your\npeaceful sleep',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Onest',
                      fontSize: screenWidth * 0.04,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  height: screenHeight * 0.05,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildCategoryButton("All Sessions", 0, screenWidth, screenHeight),
                        SizedBox(width: screenWidth * 0.03),
                        _buildCategoryButton("Foundational", 1, screenWidth, screenHeight),
                        SizedBox(width: screenWidth * 0.03),
                        _buildCategoryButton("Intermediate", 2, screenWidth, screenHeight),
                        SizedBox(width: screenWidth * 0.03),
                        _buildCategoryButton("Advance", 3, screenWidth, screenHeight),
                        SizedBox(width: screenWidth * 0.03),
                        _buildCategoryButton("Pro", 4, screenWidth, screenHeight),
                        SizedBox(width: screenWidth * 0.03),
                        _buildCategoryButton("Legend", 5, screenWidth, screenHeight),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                SizedBox(
                  height: screenHeight * 0.5,
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      scrollbars: false,
                      physics: const BouncingScrollPhysics(),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _isLoading
                                  ? _buildShimmerCard(screenWidth)
                                  : _buildCard(
                                      image: 'assets/images/imag1.png',
                                      title: 'Calming Guided\nMeditation',
                                      time: '45 mins',
                                      screenWidth: screenWidth,
                                    ),
                              SizedBox(width: screenWidth * 0.05),
                              _isLoading
                                  ? _buildShimmerCard(screenWidth)
                                  : _buildCard(
                                      image: 'assets/images/meditation.png',
                                      title: 'Deep Breathing\nExercise',
                                      time: '7 mins',
                                      screenWidth: screenWidth,
                                    ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _isLoading
                                  ? _buildShimmerCard(screenWidth)
                                  : _buildCard(
                                      image: 'assets/images/mountain.png',
                                      title: 'Mindful Body\nScan',
                                      time: '8 mins',
                                      screenWidth: screenWidth,
                                    ),
                              SizedBox(width: screenWidth * 0.05),
                              _isLoading
                                  ? _buildShimmerCard(screenWidth)
                                  : _buildCard(
                                      image: 'assets/images/hill.png',
                                      title: '5 min Mindfulness\nExercise',
                                      time: '5 mins',
                                      screenWidth: screenWidth,
                                    ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sleep Video Courses',
                                style: TextStyle(
                                  fontFamily: 'Onset',
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    _isLoading
                                        ? _buildShimmerSessionCard(screenWidth)
                                        : _buildSessionCard(
                                            image: 'assets/images/session.png',
                                            sessions: '07 Sessions',
                                            title: 'The Peace \nPractice',
                                            screenWidth: screenWidth,
                                          ),
                                    SizedBox(width: screenWidth * 0.04),
                                    _isLoading
                                        ? _buildShimmerSessionCard(screenWidth)
                                        : _buildSessionCard(
                                            image: 'assets/images/session2.png',
                                            sessions: '04 Sessions',
                                            title: 'Pause,Break \nReflect',
                                            screenWidth: screenWidth,
                                          ),
                                  ],
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.03),
                              Text(
                                'Sleep Audio Courses',
                                style: TextStyle(
                                  fontFamily: 'Onset',
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    _isLoading
                                        ? _buildShimmerSessionCard(screenWidth)
                                        : _buildSessionCard(
                                            image: 'assets/images/session3.png',
                                            sessions: '07 Sessions',
                                            title: 'Finding Inner \nBalance',
                                            screenWidth: screenWidth,
                                          ),
                                    SizedBox(width: screenWidth * 0.04),
                                    _isLoading
                                        ? _buildShimmerSessionCard(screenWidth)
                                        : _buildSessionCard(
                                            image: 'assets/images/session4.png',
                                            sessions: '07 Sessions',
                                            title: 'Awaken Your\nAwarness',
                                            screenWidth: screenWidth,
                                          ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: screenWidth * 0.1,
                      height: screenWidth * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white30,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Container(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    style: const TextStyle(
                      fontFamily: 'Onest',
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        fontFamily: 'Onest',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      prefixIcon: const Icon(Icons.search, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
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

  Widget _buildCard({
    required String image,
    required String title,
    required String time,
    required double screenWidth,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: screenWidth * 0.45,
          width: screenWidth * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 11,
                right: 8,
                child: Container(
                  height: screenWidth * 0.08,
                  width: screenWidth * 0.08,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: const Color(0xff005581),
                    size: screenWidth * 0.05,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: screenWidth * 0.02),
        SizedBox(
          width: screenWidth * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Onset',
                  fontSize: screenWidth * 0.035,
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Bookmark clicked!')),
                  );
                },
                child: Icon(
                  Icons.bookmark_border,
                  size: screenWidth * 0.06,
                  color: const Color(0xff005581),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: screenWidth * 0.02),
        Row(
          children: [
            Icon(
              Icons.access_time,
              size: screenWidth * 0.04,
              color: Colors.grey,
            ),
            SizedBox(width: screenWidth * 0.01),
            Text(
              time,
              style: TextStyle(
                fontFamily: 'Onset',
                fontSize: screenWidth * 0.035,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSessionCard({
    required String image,
    required String sessions,
    required String title,
    required double screenWidth,
  }) {
    return Container(
      height: screenWidth * 0.5,
      width: screenWidth * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: screenWidth * 0.03,
            left: screenWidth * 0.03,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.03,
                vertical: screenWidth * 0.02,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                sessions,
                style: TextStyle(
                  fontFamily: 'Onset',
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: screenWidth * 0.03,
            left: screenWidth * 0.03,
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'Onset',
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: screenWidth * 0.03,
            right: screenWidth * 0.03,
            child: Icon(
              Icons.volume_up,
              color: Colors.white,
              size: screenWidth * 0.06,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String text, int index, double screenWidth, double screenHeight) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
          vertical: screenHeight * 0.01,
        ),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff005581) : Colors.white30,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Onset',
            color: isSelected ? Colors.white : Colors.black,
            fontSize: screenWidth * 0.035,
            fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildShimmerCard(double screenWidth) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: screenWidth * 0.45,
        width: screenWidth * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
        ),
      ),
    );
  }

  Widget _buildShimmerSessionCard(double screenWidth) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: screenWidth * 0.5,
        width: screenWidth * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
        ),
      ),
    );
  }
}