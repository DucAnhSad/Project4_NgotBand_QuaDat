import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/common/widgets/images/circular_image.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/constants/image_strings.dart';

class MyUserProfileTile extends StatelessWidget {
  const MyUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MyCircularImage(
        image: MyImages.user1,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Zhao Li Ying', style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text('zhaoliying@user.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit, color: MyColors.white,), ),
    );
  }
}