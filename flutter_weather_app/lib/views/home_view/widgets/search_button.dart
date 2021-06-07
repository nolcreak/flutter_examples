import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final Widget bottomSheetBody;

  const SearchButton({
    Key? key,
    required this.bottomSheetBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: Text('Search location'),
      icon: Icon(Icons.edit),
      onPressed: () {
        showModalBottomSheet(
          enableDrag: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          clipBehavior: Clip.antiAlias,
          isScrollControlled: true,
          context: context,
          builder: (context) => Container(
              height: 750, width: double.infinity, child: bottomSheetBody),
        );
      },
    );
  }
}
