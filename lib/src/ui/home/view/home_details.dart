import 'package:youtube_app/src/allpackage.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            HomeStrings.sampleDrugs,
            style: commonFuntion.commonText(
              fontWeight: FontWeight.w600,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 3,
              bottom: 15,
            ),
            child: Text(
              HomeStrings.listofdrugsAssignedtoyou,
              style: commonFuntion.commonText(color: Colors.grey, size: 12),
            ),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(homeController.cartImage.length, (index) {
              return SizedBox(
                width: (MediaQuery.of(context).size.width - 40) / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(
                          ProductDetails(
                            title: homeController.cartTitleText[index],
                            images: homeController.cartImage[index],
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                          ),
                          color: homeController.cartColor[index],
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Image.asset(
                                homeController.cartImage[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                  color: homeController.cartTextColor[index],
                                ),
                                child: Text(
                                  HomeStrings.allotedunits,
                                  style: commonFuntion.commonText(
                                    color: CommonColors.gray,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              bottom: 10,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: CommonColors.drakGreen,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      homeController.cartTitleText[index],
                      style: commonFuntion.commonText(
                        color: Colors.black,
                        size: 12,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
