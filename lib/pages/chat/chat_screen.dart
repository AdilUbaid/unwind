import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Rak-GPT",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black87),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First section (from the first screenshot)
              Text(
                'Hello, Rakibul!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Am Ready For Help You',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Ask me anything what\'s on your mind. Am here to assist you!',
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(height: 16),
              Image.asset('assets/images/Chat bot-amico.png', height: 100), // Placeholder for chatbot image
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildHelpCard('Try Fix Bug From Your Code', Colors.blue),
                  _buildHelpCard('Try Fix Bug From Your Code', Colors.green),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.code, color: Colors.orange),
                    SizedBox(width: 10),
                    Text('design a web page using HTML'),
                  ],
                ),
              ),
              SizedBox(height: 32),

              // Second section (chat part from the second screenshot)
              Text(
                'Web Page Design',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 16),
              _buildChatBubble(
                context,
                message: 'Sure, I can provide you with a simple example of a webpage created using HTML, CSS, and JavaScript.',
                isSender: false,
              ),
              _buildChatBubble(
                context,
                message: 'Wow Rakibul',
                isSender: true,
              ),
              _buildChatBubble(
                context,
                message: 'Let\'s create a basic webpage that has a header, a navigation bar, a main content section, and a footer.',
                isSender: false,
              ),
              SizedBox(height: 32),

              // Input Field at the bottom
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ask what’s on your mind...',
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: Colors.blue),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHelpCard(String text, Color color) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 160,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: color,
            ),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text('Get Answer'),
          ),
        ],
      ),
    );
  }

  Widget _buildChatBubble(BuildContext context, {required String message, required bool isSender}) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        decoration: BoxDecoration(
          color: isSender ? Colors.blue.shade50 : Colors.green.shade50,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message,
              style: TextStyle(color: Colors.black87),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.person, size: 12, color: Colors.black54),
                SizedBox(width: 4),
                Text(
                  isSender ? 'You' : 'Rak-GPT',
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
