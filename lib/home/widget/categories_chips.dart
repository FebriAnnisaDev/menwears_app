import 'package:flutter/material.dart';

class CategoriesChips extends StatelessWidget {
  const CategoriesChips({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Wrap(
          children: const [
            Chip(
              label: Text('All'),
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              backgroundColor: Colors.black,
            ),
            SizedBox(
              width: 20.0,
            ),
            Chip(
              label: Text('Men\'s'),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(
              width: 20.0,
            ),
            Chip(
              label: Text('Boy\'s'),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(
              width: 20.0,
            ),
            Chip(
              label: Text('Others'),
              backgroundColor: Colors.transparent,
            ),
          ],
        ),
      ],
    );
  }
}
