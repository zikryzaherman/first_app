import "package:flutter/material.dart";

class Block extends StatelessWidget{
  const Block(this.title,this.image,this.description,{super.key,required this.colour});

  final String title;
  final String image;
  final String description;
  final Color colour;


  @override
  Widget build(BuildContext context) {
    return  Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: colour
                        ), // BoxDecoration
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              image,
                              width: 99,
                              height: 99,
                              fit: BoxFit.cover,
                            ), // Image.asset
                            const SizedBox(height: 10),
                            Text(title),
                            const SizedBox(height: 10),
                            Text(description),
                          ],
                        ), // Column
                      );
                    }//build context
}//stateless widget