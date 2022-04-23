import 'package:flutter/material.dart';
import '../home_page/home_page.dart';
import '../home_page/chat_page.dart';
import '../home_page/search_page.dart';
import '../home_page/user_page.dart';


class HeadPages extends StatefulWidget {
  static const String id = "/page_view";

  const HeadPages({Key? key}) : super(key: key);

  @override
  _HeadPagesState createState() => _HeadPagesState();
}

class _HeadPagesState extends State<HeadPages> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (int index){
          setState(() {
            _selectedIndex = index;

          });
        },
        children: [
          HomePage(),
           Search(),
          const ChatPage(),
          const ChatPage(),
          const Profile(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(

        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.7),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HomePage'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SearPage'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'ADD'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
          pageController.jumpToPage(index);
        },
      ),
    );
  }
}
