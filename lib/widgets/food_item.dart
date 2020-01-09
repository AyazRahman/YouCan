import 'package:flutter/material.dart';
import 'package:you_can/model/food.dart';

const titleStyle = TextStyle(
    fontFamily: 'Montserrat', fontSize: 17.0, fontWeight: FontWeight.bold);

const subtitleStyle =
    TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.grey);

Widget foodItem(Food item, BuildContext context) {
  return InkWell(
    onTap: () {
      //TODO: Add Detail Page Link when completed
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => null));
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Hero(
          tag: item.image,
          child: Image(
            image: AssetImage(item.image),
            fit: BoxFit.cover,
            height: 75,
            width: 75,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              item.name,
              style: titleStyle,
            ),
            Text(
              '${item.calorie} Calorie',
              style: subtitleStyle,
            )
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.arrow_forward_ios)
      ],
    ),
  );
}
