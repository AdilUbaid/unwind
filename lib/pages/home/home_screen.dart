import 'package:flutter/material.dart';
import 'package:unwind/pages/profile/profile_screen.dart';
import 'package:unwind/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFF5E8FF), // Lavender shade background
      // appBar: AppBar(
      //   elevation: 0,
      //   // leading: IconButton(
      //   //   icon: const Icon(Icons.settings_outlined, color: iconOutline),
      //   //   onPressed: () {},
      //   // ),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(
      //         Icons.settings_outlined,
      //         color: purple400,
      //         size: 34,
      //       ),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Afternoon,',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Sarina!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(
                    Icons.settings_outlined,
                    color: purple400,
                    size: 34,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ));
                  },
                ),
              ],
            ),

            const SizedBox(height: 16),
            // const Text(
            //   'How are you feeling today?',
            //   style: TextStyle(
            //     fontSize: 18,
            //     color: Colors.black54,
            //   ),
            // ),
            // const SizedBox(height: 16),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     _buildMoodOption('Happy', '😊', Colors.pink),
            //     _buildMoodOption('Calm', '🧘', Colors.lightBlue),
            //     _buildMoodOption('Manic', '😵', Colors.teal),
            //     _buildMoodOption('Angry', '😡', Colors.orange),
            //   ],
            // ),
            // const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '1 on 1 Sessions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Let's open up to the things that matter the most",
                        style: TextStyle(color: Colors.black54),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Book Now',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Icon(Icons.group, color: Colors.orange, size: 40),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildActionCard('Journal', Icons.book),
                _buildActionCard('Library', Icons.library_books),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildActionCard('Progress', Icons.stairs_outlined),
                _buildActionCard('Quick chat', Icons.message_outlined),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                '"It is better to conquer yourself than to win a thousand battles"',
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   items: [
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.home, color: Colors.purple),
      //       label: '',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.library_books, color: Colors.black54),
      //       label: '',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.show_chart, color: Colors.black54),
      //       label: '',
      //     ),
      //   ],
      // ),
    );
  }

  Widget _buildMoodOption(String mood, String emoji, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color.withOpacity(0.2),
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 24),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          mood,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildActionCard(String title, IconData icon) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Colors.purple),
          Text(title, style: const TextStyle(color: Colors.black87)),
        ],
      ),
    );
  }
}
