import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:project4_ngotband_quadat/common/widgets/appbar/appbar.dart';
import 'package:project4_ngotband_quadat/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(prefixIcon: Icon(Icons.person), labelText: 'Name'),
                ),
                const SizedBox(height: MySizes.spaceBtwFields,),
                TextFormField(
                  decoration: const InputDecoration(prefixIcon: Icon(Icons.phone), labelText: 'Phone Number'),
                ),
                const SizedBox(height: MySizes.spaceBtwFields,),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Icons.maps_home_work), labelText: 'Street'),
                      ),
                    ),
                    const SizedBox(width: MySizes.spaceBtwFields,),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Icons.local_post_office), labelText: 'Postal Code'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: MySizes.spaceBtwFields,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Icons.location_city), labelText: 'City'),
                      ),
                    ),
                    const SizedBox(width: MySizes.spaceBtwFields,),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Icons.map), labelText: 'State'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: MySizes.spaceBtwFields,),
                TextFormField(
                  decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),
                ),
                const SizedBox(height: MySizes.defaultSpace),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Save'),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
