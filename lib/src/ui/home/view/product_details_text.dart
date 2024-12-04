import 'package:youtube_app/src/allpackage.dart';

class ProductDetailsContent extends StatelessWidget {
  const ProductDetailsContent(
      {super.key, required, required this.homeController});

  final HomeController homeController;

  Widget buildTextSection(
    String title,
    String subtitle, {
    double titleSize = 13,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: commonFuntion.commonText(
              size: titleSize,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            subtitle,
            style: commonFuntion.commonText(
              size: 12,
              color: CommonColors.gray,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              HomeStrings.productDetails,
              style: commonFuntion.commonText(
                size: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            HomeStrings.productSubtitle,
            style: commonFuntion.commonText(
              size: 12,
              color: CommonColors.gray,
              fontWeight: FontWeight.w400,
            ),
          ),
          buildTextSection(
            HomeStrings.uses,
            HomeStrings.usesSubtitle,
          ),
          buildTextSection(
            HomeStrings.productFeaturesAndSpecifications,
            HomeStrings.productFeaturesAndSpecificationsSubtitle,
          ),
          buildTextSection(
            HomeStrings.directionsForUse,
            HomeStrings.directionsForUseSubtitle,
          ),
          buildTextSection(
            HomeStrings.safetyInformation,
            HomeStrings.safetyInformationSubtitle,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 5,
            ),
            child: Text(
              HomeStrings.especiallyForYou,
              style: commonFuntion.commonText(
                size: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            HomeStrings.listofdrugsAssignedtoyou,
            style: commonFuntion.commonText(
              size: 12,
              color: CommonColors.gray,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(2, (index) {
              return SizedBox(
                width: (MediaQuery.of(context).size.width - 40) / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
