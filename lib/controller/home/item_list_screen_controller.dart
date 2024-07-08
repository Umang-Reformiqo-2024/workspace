import 'package:get/get.dart';

import '../../model/category_model_class.dart';
import '../../model/home_item_model_class.dart';

class ItemListScreenController extends GetxController{

  List<CategoryModelClass> categoryItemAssetString = [
    CategoryModelClass("assets/icons/svg_icons/meeting_room_svg.svg", "Meeting Room"),
    CategoryModelClass("assets/icons/svg_icons/virtual_office_svg.svg", "Virtual Office"),
    CategoryModelClass("assets/icons/svg_icons/office_space_svg.svg", "Office Space"),
    CategoryModelClass("assets/icons/svg_icons/training_room_svg.svg", "Training Room"),
  ];

  List<HomeItemModelClass> itemListHome=[];
  List<HomeItemModelClass> meetingRoomItemList=[
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Harmony Hideaway", subTitle: "Find Your Focus in Our Tranquil Retreat", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Inspire & Ignite Room", subTitle: "Where Ideas Flow Freely", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Visionary Vault", subTitle: "Collaborate and Innovate Here", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Silent Study Space", subTitle: "Fuel Your Creativity", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Innovator's Island", subTitle: "Where Big Ideas Take Shape", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Productivity Pod", subTitle: "Plan Your Next Move in Comfort", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Reflective Retreat", subTitle: "Escape the Ordinary, Invent the Extraordinary", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Strategy Sanctuary", subTitle: "Nurture Productivity and Well-being", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Inventor's Inn", subTitle: "Minimize Distractions, Maximize Results", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Serenity Suite", subTitle: "Where Teams Thrive Together", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Imagination Chamber", subTitle: "Peaceful Productivity Awaits", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Quiet Quarters", subTitle: "Unleash Your Creative Potential Here", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Collaboration Corne", subTitle: "Tranquil Space for Clear Thinking", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Focus Haven", subTitle: "Where Ideas Find Their Home", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Mindful Meeting Room", subTitle: "Plan Strategically, Execute Effectively", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Innovation Oasis", subTitle: "Take Time to Ponder and Plan", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Strategy Suite", subTitle: "Boost Your Efficiency in Comfort", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Brainstorm Bunker", subTitle: "Explore New Horizons Here", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Inspiration Station", subTitle: "Dive Deep into Concentrated Work", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Think Tank", subTitle: "Where Dreams Become Blueprints", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Creative Cove", subTitle: "Where Sparks of Innovation Fly", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "Zen Den", subTitle: "Find Balance and Purpose in Your Meetings", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_1.webp", title: "title", subTitle: "subTitle", location: "location"),

  ];
  List<HomeItemModelClass> deskItemList=[
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_2.webp", title: "Digital HQ", subTitle: "Your Online Command Center", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_2.webp", title: "Remote Lounge", subTitle: "Connect Seamlessly from Anywhere", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_2.webp", title: "Cyber Suite", subTitle: "A Virtual Sanctuary for Productivity", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_2.webp", title: "Telecommuter's Haven", subTitle: "Bringing the Office to Your Screen", location: "location"),
  ];
  List<HomeItemModelClass> cabinItemList=[
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_3.webp", title: "Hub Central", subTitle: "The Heartbeat of Collaboration", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_3.webp", title: "Unity Commons", subTitle: "Where Community and Creativity Converge", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_3.webp", title: "Innovator's Nexus", subTitle: "Where Boundless Ideas Intersect", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_3.webp", title: "Elevate Workspace", subTitle: "Inspiring Growth and Success", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_3.webp", title: "Collab Central", subTitle: "Where Teams Come Together to Thrive", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_3.webp", title: "Creative Commons", subTitle: "Unleash Your Imagination in a Shared Space", location: "location"),
    HomeItemModelClass(pngAssetPath: "assets/v2/png/location_3.webp", title: "Synergy Station", subTitle: "Where Energy and Ideas Flow Freely", location: "location"),
  ];
  // List<HomeItemModelClass> trainingRoomItemList=[
  //   HomeItemModelClass(pngAssetPath: "assets/v2/png/location_4.webp", title: "Learning Lab", subTitle: "Where Knowledge Meets Opportunity", location: "location"),
  //   HomeItemModelClass(pngAssetPath: "assets/v2/png/location_4.webp", title: "Skill Forge", subTitle: "Crafting Competence, One Session at a Time", location: "location"),
  //   HomeItemModelClass(pngAssetPath: "assets/v2/png/location_4.webp", title: "Training Terrace", subTitle: "Elevate Your Skills in a Dynamic Environment", location: "location"),
  //   HomeItemModelClass(pngAssetPath: "assets/v2/png/location_4.webp", title: "Education Emporium", subTitle: "Empowering Growth through Learning", location: "location"),
  //   HomeItemModelClass(pngAssetPath: "assets/v2/png/location_4.webp", title: "Development Den", subTitle: "Nurturing Talent, Fostering Growth", location: "location"),
  //   HomeItemModelClass(pngAssetPath: "assets/v2/png/location_4.webp", title: "Knowledge Kingdom", subTitle: "Expand Your Horizons, Expand Your Skills", location: "location"),
  // ];

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
      itemListHome.addAll(deskItemList);
    }
    if(selectedCategoryIndex==2)
    {
      itemListHome.clear();
      itemListHome.addAll(cabinItemList);
    }
    // if(selectedCategoryIndex==3)
    // {
    //   itemListHome.clear();
    //   itemListHome.addAll(trainingRoomItemList);
    // }

    update();
  }

  onTapFavButton({required int index}){
    itemListHome[index].isFavourite?itemListHome[index].isFavourite=false:itemListHome[index].isFavourite=true;
    update();
  }
}