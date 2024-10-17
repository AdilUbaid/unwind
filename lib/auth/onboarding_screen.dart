import 'package:flutter/material.dart';
import 'package:unwind/pages/sign_up_and_login/sign_up.dart';

// class OnboardingScreen extends StatelessWidget {
//   const OnboardingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Image.asset("assets/images/Meditation-bro.png"),
//           Text(
//               "Take a step towards better mental health. We are here to support you on your journey to emotional well-being."),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextButton(onPressed: () {}, child: Text("Skip")),
//               TextButton(onPressed: () {}, child: Text("Next"))
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Widget> _buildPageContent(BuildContext context) {
    return [
      _buildPage(
        context,
        image: 'assets/images/Meditation-bro.png',
        title: 'Take a step towards better mental health.',
        subtitle:
            'We are here to support you on your journey to emotional well-being.',
      ),
      _buildPage(
        context,
        image: 'assets/images/Shrug-cuate.png',
        title: 'Track Your Mood',
        subtitle:
            'Easily monitor your emotions daily. Understand your feelings, and take control of your mental well-being.',
      ),
      _buildPage(
        context,
        image: 'assets/images/Writing a letter-bro.png',
        title: 'Access Valuable resources',
        subtitle:
            'Explore a vast library of resources. Empower yourself with knowledge to foster positive mental health.',
      ),
    ];
  }

  Widget _buildPage(BuildContext context,
      {required String image,
      required String title,
      required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,
              height: 300), // Your images should be placed in 'assets/images/'
          SizedBox(height: 40),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.purple[700],
            ),
          ),
          SizedBox(height: 20),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: _buildPageContent(context),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) => _buildDot(index)),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Skip action, navigate to main screen or login
                  },
                  child: Text('Skip'),
                ),
                TextButton(
                  onPressed: () {
                    if (_currentPage == 2) {
                      // Navigate to next screen

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    } else {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(_currentPage == 2 ? 'Get Started' : 'Next'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 8,
      width: _currentPage == index ? 24 : 8,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.purple : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
