import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomElevatedButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed; 

  const CustomElevatedButton({
    required this.imagePath,
    required this.text,
    required this.onPressed, 
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        width: 300,
        height: 55,
        
      decoration: const BoxDecoration( 
        image:  DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/icons/buttonsimage.png",))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 2,
                  offset: const Offset(1, 1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}