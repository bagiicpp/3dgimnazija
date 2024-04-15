import 'package:flutter/material.dart';

class HotspotInfoButton extends StatefulWidget {
  final String title;

  const HotspotInfoButton({
    super.key,
    required this.title,
  });

  @override
  State<HotspotInfoButton> createState() => _HotspotInfoButtonState();
}

class _HotspotInfoButtonState extends State<HotspotInfoButton> {
  bool isVisible = true;
  Color? boxColor = Colors.transparent;
  Color? textColor = Colors.transparent;

  Widget visibleContainer() {
    if (isVisible) {
      boxColor = Colors.transparent;
      textColor = Colors.transparent;
    } else {
      boxColor = Theme.of(context).colorScheme.secondary;
      textColor = Colors.black;
    }
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration:  BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          widget.title,
          style: TextStyle(
            color: textColor,
            fontSize: 15.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(Icons.info_outline, size: 40,)
          ),
        ),
        const SizedBox(width: 7),
        visibleContainer()
      ],
    );
  }
}
