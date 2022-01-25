import 'package:flutter/material.dart';

Color primaryColor = Color(0xff376565);

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[400],blurRadius: 30,offset: Offset(0,10))
];

String details = 'My job requires moving to another country. '
    'I do not have the opportunity to take the cat with me. '
    'I am looking for good people who will shelter my pet';

List<Map> categories = [
  {"name": 'Cats',"imagePath":'images/cat.png'},
  {"name": 'Dogs',"imagePath":'images/dog.png'},
  {"name": 'Horses',"imagePath":'images/horse.png'},
  {"name": 'Parrots',"imagePath":'images/parrot.png'},
  {"name": 'Rabbits',"imagePath":'images/rabbit.png'},
  {"name": 'Cats',"imagePath":'images/cat.png'},
  {"name": 'Dogs',"imagePath":'images/dog.png'},
  {"name": 'Horses',"imagePath":'images/horse.png'},
  {"name": 'Parrots',"imagePath":'images/parrot.png'},
  {"name": 'Rabbits',"imagePath":'images/rabbit.png'},
];

List<Map> catMapList = [
  {"id":0,"name":'Sola',"imagePath":'images/pet_cat2.png',
    "Species":'Abyssinion cat',"sex":'Female',
    "year":'2',"distance":'3.6 km',"location":'5 Bulvorno-Kudriovska Street, Kyiv',},
  {"id":1,"name":'Orion',"imagePath":'images/pet_cat1.png',
    "Species":'Abyssinion cat',"sex":'male',
    "year":'1.5',"distance":'7.6 km',"location":'5 Bulvorno-Kudriovska Street, Kyiv',},
  {"id":2,"name":'Sola',"imagePath":'images/pet_cat2.png',
    "Species":'Abyssinion cat',"sex":'Female',
    "year":'2',"distance":'3.6 km',"location":'5 Bulvorno-Kudriovska Street, Kyiv',},
  {"id":3,"name":'Orion',"imagePath":'images/pet_cat1.png',
    "Species":'Abyssinion cat',"sex":'male',
    "year":'1.5',"distance":'7.6 km',"location":'5 Bulvorno-Kudriovska Street, Kyiv',},
  {"id":4,"name":'Sola',"imagePath":'images/pet_cat2.png',
    "Species":'Abyssinion cat',"sex":'Female',
    "year":'2',"distance":'3.6 km',"location":'5 Bulvorno-Kudriovska Street, Kyiv',},
  {"id":5,"name":'Orion',"imagePath":'images/pet_cat1.png',
    "Species":'Abyssinion cat',"sex":'male',
    "year":'1.5',"distance":'7.6 km',"location":'5 Bulvorno-Kudriovska Street, Kyiv',},

];


List<Map> navList = [
  {'icon': Icons.pets_rounded,'title': 'Adoption'},
  {'icon': Icons.markunread_mailbox_rounded,'title': 'Donation'},
  {'icon': Icons.add_rounded,'title': 'Add Pet'},
  {'icon': Icons.favorite_rounded,'title': 'Favorites'},
  {'icon': Icons.mail_rounded,'title': 'Messages'},
  {'icon': Icons.person,'title': 'Profile'},
];