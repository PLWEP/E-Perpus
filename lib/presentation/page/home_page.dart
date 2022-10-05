import 'package:flutter/cupertino.dart';
import 'package:perpus/presentation/widget/custom_home_item.dart';
import 'package:perpus/presentation/widget/custom_main_container.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomMainContainer(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomHomeItem(imageUrl: 'assets/image_1.png'),
          CustomHomeItem(imageUrl: 'assets/image_2.png'),
          CustomHomeItem(imageUrl: 'assets/image_3.png'),
        ],
      ),
    );
  }
}
