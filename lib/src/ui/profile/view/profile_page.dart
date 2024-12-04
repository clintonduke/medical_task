import 'package:youtube_app/src/allpackage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController practitionerIdController =
      TextEditingController();
  final TextEditingController billingAddressController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchProfileData();
  }

  Future<void> fetchProfileData() async {
    var userRef =
        FirebaseFirestore.instance.collection('users').doc(commonFuntion.myfcm);
    var docSnapshot = await userRef.get();
    if (docSnapshot.exists) {
      var data = docSnapshot.data() as Map<String, dynamic>;
      setState(() {
        nameController.text = data['name'] ?? '';
        phoneController.text = data['phone'] ?? '';
        emailController.text = data['email'] ?? '';
        practitionerIdController.text = data['practitionerId'] ?? '';
        billingAddressController.text = data['billingAddress'] ?? '';
      });
    }
  }

  Future<void> updateProfile() async {
    var userRef =
        FirebaseFirestore.instance.collection('users').doc(commonFuntion.myfcm);
    await userRef.set({
      'name': nameController.text,
      'phone': phoneController.text,
      'email': emailController.text,
      'practitionerId': practitionerIdController.text,
      'billingAddress': billingAddressController.text,
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Profile updated successfully!'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 237, 237),
      appBar: AppBar(
        title: Text(
          ProfileStrings.profile,
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
            child: Icon(Icons.notifications_rounded, size: 30),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileCard(),
              const SizedBox(height: 20),
              ...profileTextPart(),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CommonColors.appColor,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    updateProfile();
                  },
                  child: Text(
                    ProfileStrings.update,
                    style: commonFuntion.commonText(
                      color: Colors.white,
                      size: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> profileTextPart() {
    final fields = [
      'Name',
      'Phone',
      'Email',
      'Practitioner ID',
      'Billing Address'
    ];
    final controllers = [
      nameController,
      phoneController,
      emailController,
      practitionerIdController,
      billingAddressController
    ];
    return List.generate(fields.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: commonFuntion.profileTextField(
          fields[index],
          controllers[index],
        ),
      );
    });
  }
}
