import 'package:get/get.dart';

class WscLocationController extends GetxController{

  List<WorkspaceLocation> workSpaceLocations = [
    WorkspaceLocation(id: 0, title: "Home", logo: "assets/v2/png/location_home.webp"),
    WorkspaceLocation(id: 0, title: "City Center", logo: "assets/v2/png/location_city_center.webp"),
    WorkspaceLocation(id: 0, title: "Skyline", logo: "assets/v2/png/location_skyline.webp"),
    WorkspaceLocation(id: 0, title: "Rise", logo: "assets/v2/png/location_rise.webp"),
  ];


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // Get.bottomSheet(Container(height: 250,));
  }

}


class WorkspaceLocation{
  int? id;
  String? title;
  String? logo;

  WorkspaceLocation({required this.id, required this.title, required this.logo});
}