import 'package:youtube_app/src/allpackage.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.title, required this.images});
  final String title;
  final String images;

  @override
  State<ProductDetails> createState() => ProductDetailsState();
}

class ProductDetailsState extends State<ProductDetails> {
  HomeController homeController = Get.put(HomeController());
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> productImage = [
      widget.images,
      widget.images,
      widget.images,
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.title,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: productImage.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(
                      image,
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: productImage.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => setState(() => currentIndex = entry.key),
                    child: Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == entry.key
                            ? CommonColors.appColor
                            : CommonColors.gray,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            ProductDetailsHeader(title: widget.title),
            Container(
              width: double.infinity,
              height: 40,
              color: CommonColors.skyBlue,
              child: Center(
                child: Text(
                  HomeStrings.maximumof12UnitcanbeAdded,
                  style: commonFuntion.commonText(
                    color: CommonColors.black,
                    size: 12,
                  ),
                ),
              ),
            ),
            ProductDetailsContent(
              homeController: homeController,
            ),
            const ProductPlaceOrder(),
          ],
        ),
      ),
    );
  }
}
