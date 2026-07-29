import 'package:get/get.dart';

import 'Model.dart';

class FilesController extends GetxController
    with  GetTickerProviderStateMixin{
   var selectIndex = 0.obs;
   void changeIndex(int index){
     selectIndex.value=index;
   }
   final List<Model> model=[
     Model(
         id: '1',
         name: 'Sansevieria',
         image: 'assets/images/pexels-jonathan-borba-2922353 1 (2).png'),
     Model(
         id: '2',
         name: 'Schefflera',
         image: 'assets/images/pexels-jonathan-borba-2922353 2.png'),
     Model(
         id: '3',
         name: 'Roses',
         image: 'assets/images/pexels-jonathan-borba-2922353 3.png'),

     Model(
         id: '4',
         name: 'Sansevieria',
         image: 'assets/images/pexels-jonathan-borba-2922353 1 (2).png'),
     Model(
         id: '5',
         name: 'Schefflera',
         image: 'assets/images/pexels-jonathan-borba-2922353 2.png'),
     Model(
         id: '6',
         name: 'Roses',
         image: 'assets/images/pexels-jonathan-borba-2922353 3.png'),
     Model(
         id: '7',
         name: 'Sansevieria',
         image: 'assets/images/pexels-jonathan-borba-2922353 1 (2).png'),
     Model(
         id: '8',
         name: 'Schefflera',
         image: 'assets/images/pexels-jonathan-borba-2922353 2.png'),
     Model(
         id: '9',
         name: 'Roses',
         image: 'assets/images/pexels-jonathan-borba-2922353 3.png'),
   ];
   Model getModelById(String id){
     return model.firstWhere((m)=>m.id==id);
   }
}