import 'package:flutter/material.dart';

class HotspotButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget? child;
  final String title;
  
  const HotspotButton({
    super.key,
    required this.onTap,
    required this.child,
    required this.title,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8) 
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 15.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),

        const SizedBox(height: 7),

        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(25),
            ),
            child: child,
          )
        ),
      ],
    );
  }
}