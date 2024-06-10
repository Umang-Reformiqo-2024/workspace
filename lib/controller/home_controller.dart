import 'package:get/get.dart';
import 'package:workspace/model/home_item_model_class.dart';

import '../model/category_model_class.dart';

class HomeController extends GetxController {



  List<CategoryModelClass> categoryItemAssetString = [
    CategoryModelClass("assets/icons/svg_icons/meeting_room_svg.svg", "Meeting Room"),
    CategoryModelClass("assets/icons/svg_icons/virtual_office_svg.svg", "Virtual Office"),
    CategoryModelClass("assets/icons/svg_icons/office_space_svg.svg", "Office Space"),
    CategoryModelClass("assets/icons/svg_icons/training_room_svg.svg", "Training Room"),
  ];

  List<HomeItemModelClass> itemListHome=[];
  List<HomeItemModelClass> meetingRoomItemList=[
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_0.png", title: "Harmony Hideaway", subTitle: "Find Your Focus in Our Tranquil Retreat", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_1.png", title: "Inspire & Ignite Room", subTitle: "Where Ideas Flow Freely", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_2.png", title: "Visionary Vault", subTitle: "Collaborate and Innovate Here", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_3.png", title: "Silent Study Space", subTitle: "Fuel Your Creativity", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_4.png", title: "Innovator's Island", subTitle: "Where Big Ideas Take Shape", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_5.png", title: "Productivity Pod", subTitle: "Plan Your Next Move in Comfort", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_6.png", title: "Reflective Retreat", subTitle: "Escape the Ordinary, Invent the Extraordinary", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_7.png", title: "Strategy Sanctuary", subTitle: "Nurture Productivity and Well-being", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_8.png", title: "Inventor's Inn", subTitle: "Minimize Distractions, Maximize Results", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_9.png", title: "Serenity Suite", subTitle: "Where Teams Thrive Together", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_10.png", title: "Imagination Chamber", subTitle: "Peaceful Productivity Awaits", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_11.png", title: "Quiet Quarters", subTitle: "Unleash Your Creative Potential Here", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_12.png", title: "Collaboration Corne", subTitle: "Tranquil Space for Clear Thinking", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_13.png", title: "Focus Haven", subTitle: "Where Ideas Find Their Home", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_14.png", title: "Mindful Meeting Room", subTitle: "Plan Strategically, Execute Effectively", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_15.png", title: "Innovation Oasis", subTitle: "Take Time to Ponder and Plan", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_16.png", title: "Strategy Suite", subTitle: "Boost Your Efficiency in Comfort", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_17.png", title: "Brainstorm Bunker", subTitle: "Explore New Horizons Here", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_18.png", title: "Inspiration Station", subTitle: "Dive Deep into Concentrated Work", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_19.png", title: "Think Tank", subTitle: "Where Dreams Become Blueprints", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_20.png", title: "Creative Cove", subTitle: "Where Sparks of Innovation Fly", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_21.png", title: "Zen Den", subTitle: "Find Balance and Purpose in Your Meetings", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/meeting_room_22.png", title: "title", subTitle: "subTitle", location: "location"),

  ];
  List<HomeItemModelClass> virtualOfficeItemList=[
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/virtual_office_0.png", title: "Digital HQ", subTitle: "Your Online Command Center", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/virtual_office_1.png", title: "Remote Lounge", subTitle: "Connect Seamlessly from Anywhere", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/virtual_office_2.png", title: "Cyber Suite", subTitle: "A Virtual Sanctuary for Productivity", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/virtual_office_3.png", title: "Telecommuter's Haven", subTitle: "Bringing the Office to Your Screen", location: "location"),
  ];
  List<HomeItemModelClass> officeSpaceItemList=[
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/coworking_space_0.png", title: "Hub Central", subTitle: "The Heartbeat of Collaboration", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/coworking_space_1.png", title: "Unity Commons", subTitle: "Where Community and Creativity Converge", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/coworking_space_2.png", title: "Innovator's Nexus", subTitle: "Where Boundless Ideas Intersect", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/location_2.png", title: "Elevate Workspace", subTitle: "Inspiring Growth and Success", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/location_3.png", title: "Collab Central", subTitle: "Where Teams Come Together to Thrive", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/location_4.png", title: "Creative Commons", subTitle: "Unleash Your Imagination in a Shared Space", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/coworking_space_6.png", title: "Synergy Station", subTitle: "Where Energy and Ideas Flow Freely", location: "location"),
   ];
  List<HomeItemModelClass> trainingRoomItemList=[
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/training_room_0.png", title: "Learning Lab", subTitle: "Where Knowledge Meets Opportunity", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/training_room_1.png", title: "Skill Forge", subTitle: "Crafting Competence, One Session at a Time", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/training_room_2.png", title: "Training Terrace", subTitle: "Elevate Your Skills in a Dynamic Environment", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/training_room_3.png", title: "Education Emporium", subTitle: "Empowering Growth through Learning", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/training_room_4.png", title: "Development Den", subTitle: "Nurturing Talent, Fostering Growth", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/icons/item_icons/training_room_5.png", title: "Knowledge Kingdom", subTitle: "Expand Your Horizons, Expand Your Skills", location: "location"),
   ];

  int selectedCategoryIndex=0;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    itemListHome.addAll(meetingRoomItemList);
    update();
  }

  onTapCategoryItem({required int index}){
    selectedCategoryIndex=index;

    if(selectedCategoryIndex==0)
      {
        itemListHome.clear();
        itemListHome.addAll(meetingRoomItemList);
      }
    if(selectedCategoryIndex==1)
      {
        itemListHome.clear();
        itemListHome.addAll(virtualOfficeItemList);
      }
    if(selectedCategoryIndex==2)
      {
        itemListHome.clear();
        itemListHome.addAll(officeSpaceItemList);
      }
    if(selectedCategoryIndex==3)
      {
        itemListHome.clear();
        itemListHome.addAll(trainingRoomItemList);
      }

    update();
  }

  onTapFavButton({required int index}){
    itemListHome[index].isFavourite?itemListHome[index].isFavourite=false:itemListHome[index].isFavourite=true;
    update();
  }
}