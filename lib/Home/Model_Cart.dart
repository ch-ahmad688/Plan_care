import 'package:flutter/material.dart';
import 'package:plant_care/Home/Model.dart';

class ModelCart extends StatelessWidget {
  final Model model;
  const ModelCart({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width*0.75,
              decoration: BoxDecoration(
                color: Color(0xffD2EFDA),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                  children: [
                    Image.asset(model.image,height: 75,width: 75,),
                    SizedBox(width: 50,),
                    Text(model.name,
                      textAlign:TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ]
              ),
            ),
          ),
          SizedBox(width: 8,),
          Image.asset('assets/images/Plant.png',height: 40,width: 40,)
        ],
      ),
    );
  }
}
