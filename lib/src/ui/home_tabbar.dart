import 'package:youtube_app/src/allpackage.dart';

class HomeBottomtabbar extends StatefulWidget {
  const HomeBottomtabbar({super.key});

  @override
  State<HomeBottomtabbar> createState() => _HomeBottomtabbarState();
}

class _HomeBottomtabbarState extends State<HomeBottomtabbar> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    OrderPage(),
    Center(child: Text('Cart Page', style: TextStyle(fontSize: 24))),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: CommonColors.appColor,
        unselectedItemColor: CommonColors.gray,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_rounded),
            label: 'My Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
