import 'package:youtube_app/src/allpackage.dart';

class OrderCard extends StatelessWidget {
  final String image;
  final String status;
  final String date;
  final String items;

  const OrderCard({
    super.key,
    required this.image,
    required this.status,
    required this.date,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order:#123456",
                    style: commonFuntion.commonText(size: 12),
                  ),
                  const Icon(Icons.arrow_forward, color: Colors.blue),
                ],
              ),
            ),
            const Divider(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(image, height: 50, width: 50),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                status,
                                style: commonFuntion.commonText(
                                  size: 13,
                                  color: CommonColors.appColor,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                date,
                                style: commonFuntion.commonText(
                                  size: 13,
                                  color: CommonColors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            items,
                            style: commonFuntion.commonText(
                              size: 13,
                              color: CommonColors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    OrderStrings.trackOrder,
                    style: TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      color: CommonColors.drakGreen,
                    ),
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
