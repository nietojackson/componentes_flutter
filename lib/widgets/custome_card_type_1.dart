import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CustomeCardType1 extends StatelessWidget {
  const CustomeCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
            title: Text("soy un titulo"),
            subtitle: Text(
                "Veniam laborum id sint irure nulla aute. Esse laborum quis incididunt elit cillum nostrud ullamco voluptate sit ex. Ullamco laboris do nisi irure ut anim exercitation proident amet commodo dolore excepteur occaecat."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(onPressed: () {}, child: const Text("Ok")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
