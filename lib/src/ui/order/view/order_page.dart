import 'package:youtube_app/src/allpackage.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 237, 237),
      appBar: AppBar(
        title: Text(
          OrderStrings.myOrder,
          style: commonFuntion.commonText(
            color: Colors.white,
            size: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        flexibleSpace: const CommonAppbar(),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications_rounded,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return OrderCard(
              image: homeController.cartImage[index],
              status: OrderStrings.delivered,
              date: OrderStrings.on21stAprl24,
              items: OrderStrings.fiveItem,
            );
          },
        ),
      ),
    );
  }
}
