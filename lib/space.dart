import 'package:flutter/material.dart';

class Space {
  final String id;
  final String image;
  final String description;

  Space({required this.id, required this.image, required this.description});
}

final List<Space> spaces = [
  Space(
    id: '2830a9a4-ea96-11ea-adc1-0242ac120002',
    image: 'assets/images/space_1.jpg',
    description:
        'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sapiente maiores soluta et recusandae facilis ex cum praesentium aliquam dolorem maxime, obcaecati non harum nostrum magni beatae adipisci tenetur iste expedita? Repellendus minima perferendis dolores modi eum fuga vitae id hic?',
  ),
  Space(
    id: 'a12a93a9-c656-4289-bd70-1a8b3285656c',
    image: 'assets/images/space_2.jpg',
    description:
        'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sapiente maiores soluta et recusandae facilis ex cum praesentium aliquam dolorem maxime, obcaecati non harum nostrum magni beatae adipisci tenetur iste expedita? Repellendus minima perferendis dolores modi eum fuga vitae id hic? Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sapiente maiores soluta et recusandae facilis ex cum praesentium aliquam dolorem maxime, obcaecati non harum nostrum magni beatae adipisci tenetur iste expedita? Repellendus minima perferendis dolores modi eum fuga vitae id hic?',
  ),
  Space(
    id: 'd9f7ac72-fa2f-4fba-bcb7-4820a9b20593',
    image: 'assets/images/space_3.jpg',
    description:
        'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sapiente maiores soluta et recusandae facilis ex cum praesentium aliquam dolorem maxime.',
  ),
  Space(
    id: 'f1fad323-322d-487b-afec-e1056cbf1231',
    image: 'assets/images/space_4.jpg',
    description:
        'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sapiente maiores soluta et recusandae facilis ex cum praesentium aliquam dolorem maxime, obcaecati non harum nostrum magni beatae adipisci tenetur iste expedita? ',
  ),
  Space(
    id: 'c1a95799-73a2-4ab5-96e5-735f946a5e88',
    image: 'assets/images/space_5.jpg',
    description:
        'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sapiente maiores soluta et recusandae facilis ex cum praesentium aliquam dolorem maxime.',
  ),
  Space(
    id: '1c54a008-044f-4417-a5e0-419a5d7b2c16',
    image: 'assets/images/space_6.jpg',
    description:
        'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sapiente maiores soluta et recusandae facilis ex cum praesentium aliquam dolorem maxime, obcaecati non harum nostrum magni beatae adipisci tenetur iste expedita? Repellendus minima perferendis dolores modi eum fuga vitae id hic?',
  ),
];

class SpaceCard extends StatefulWidget {
  const SpaceCard({Key? key, required this.space}) : super(key: key);
  final Space space;

  @override
  State<SpaceCard> createState() => _SpaceCardState();
}

class _SpaceCardState extends State<SpaceCard> {
  @override
  Widget build(BuildContext context) {
    Space space = widget.space;
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                space.image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 25, top: 25, right: 80),
              child: Text(space.description,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
              ),
              decoration: const BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}