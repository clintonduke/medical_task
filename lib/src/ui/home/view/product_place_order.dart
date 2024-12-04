import 'package:youtube_app/src/allpackage.dart';

class ProductPlaceOrder extends StatelessWidget {
  const ProductPlaceOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '-        1       +',
                      style: commonFuntion.commonText(
                        color: CommonColors.black,
                        size: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
                width: 200,
                color: CommonColors.drakGreen,
                child: Center(
                  child: Text(
                    HomeStrings.placeorder,
                    style: commonFuntion.commonText(
                      color: CommonColors.white,
                      size: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
