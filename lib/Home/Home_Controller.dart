import 'package:get/get.dart';
import 'package:plant_care/Home/Model.dart';

class Controller extends GetxController{
  final List<Model>model=[
    Model(
        id: '1',
        name:'Sansevieria',
        image: 'assets/images/pexels-jonathan-borba-2922353 1.png'),
    Model(
        id:'2',
        name: 'Schefflera',
        image: 'assets/images/pexels-jonathan-borba-2922353 10.png'),
    Model(
        id: '3',
        name: 'Roses',
        image:'assets/images/pexels-jonathan-borba-2922353 1.png'),
    Model(
        id: '4',
        name: 'Sansevieria',
        image:'assets/images/pexels-jonathan-borba-2922353 1.png'),
    Model(
        id: '5',
        name: 'Schefflera',
        image:'assets/images/pexels-jonathan-borba-2922353 1.png'),
    Model(
        id: '6',
        name: 'Roses',
        image:'assets/images/pexels-jonathan-borba-2922353 1.png'),
  ];

    Model getModelById(String id){
     return model.firstWhere((m)=>m.id==id);
    }
}