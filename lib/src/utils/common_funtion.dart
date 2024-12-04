import 'package:youtube_app/src/allpackage.dart';

class CommonFuntion {
  String myfcm = '';
  TextStyle commonText({
    double size = 16,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
    );
  }

  Widget profileTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            label,
            style: commonFuntion.commonText(
              color: CommonColors.ligtblack,
              size: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: label,
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: CommonColors.gray),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: CommonColors.appColor),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 10.0,
            ),
          ),
        ),
      ],
    );
  }
}

CommonFuntion commonFuntion = CommonFuntion();
