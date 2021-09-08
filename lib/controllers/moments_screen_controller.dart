import 'package:get/get.dart';
import 'package:plural_app/models/posts_model.dart';

class MomentsScreenController extends GetxController {
  List<PostsModel> posts = [
    PostsModel(
      profileImage: "https://picsum.photos/id/0/367/267",
      time: '20 min ago',
      postText:
          'Lorem ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum.',
      profileName: 'The Rolling Phones',
   
    ),
    PostsModel(
      profileImage: "https://picsum.photos/id/0/367/267",
      time: '20 min ago',
      profileName: 'The Rolling Phones',
       postImage:
          'assets/photo.png',
    ), 
     PostsModel(
      profileImage: "https://picsum.photos/id/0/367/267",
      time: '20 min ago',
      postText:
          'Lorem ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum.',
      profileName: 'The Rolling Phones',
       postImage:
          'assets/photo.png',
   
    ),
     PostsModel(
      profileImage: "https://picsum.photos/id/0/367/267",
      time: '20 min ago',
      postText:
          'Lorem ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum.',
      profileName: 'The Rolling Phones',
   
    ),
    PostsModel(
      profileImage: '"https://picsum.photos/id/0/367/267"',
      time: '20 min ago',
      profileName: 'The Rolling Phones',
       postImage:
          'assets/photo.png',
    ), 
  ];
}
