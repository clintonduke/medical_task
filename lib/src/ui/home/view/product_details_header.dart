import 'package:youtube_app/src/allpackage.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: commonFuntion.commonText(
              fontWeight: FontWeight.w600,
              size: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: Row(
              children: [
                Text(
                  HomeStrings.freeSample,
                  style: commonFuntion.commonText(
                    fontWeight: FontWeight.w500,
                    size: 12,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  decoration: BoxDecoration(
                    color: CommonColors.lightBlue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    HomeStrings.trail,
                    style: commonFuntion.commonText(
                      color: CommonColors.drakGreen,
                      fontWeight: FontWeight.w500,
                      size: 12,
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
}
