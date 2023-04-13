// ignore_for_file: unused_import, prefer_const_constructors

import 'package:assignment_ui/Drawer%20Task/DrawerTaskScreen.dart';
import 'package:assignment_ui/Expansion%20sample/Expansion_sample.dart';
import 'package:assignment_ui/Expansion_Tile_card_ui/Expansion_tile_card.dart';
import 'package:assignment_ui/GridView_Stack%20task/grid_view_stack.dart';
import 'package:assignment_ui/WhatsappUi/screens/TabHomeScreen.dart';
import 'package:assignment_ui/ContactBook_ui/ContactUiSplash.dart';
import 'package:assignment_ui/Hotel%20app/hotelsMainScreen/HotelAppHome.dart';
import 'package:assignment_ui/ContactBook_ui/ContactBookHomeScreen.dart';
import 'package:assignment_ui/LoginSignUpUi/screens/LoginSignUpSplash.dart';
import 'package:assignment_ui/StaggeredGridView/Homescreen.dart';
import 'package:assignment_ui/banking_app/screens/home_screen/banking_home_screen.dart';
import 'package:assignment_ui/gridview%20builder%20task/GridView_builderScreen.dart';
import 'package:assignment_ui/Hotel%20app/details_screen/screen1.dart';
import 'package:assignment_ui/invoice_app-ui/screens/first_screeen/invoice_first_screen.dart';
import 'package:assignment_ui/music_app_ui/screens/main_screen/music_app_main.dart';
import 'package:assignment_ui/profile%20ui%202/profileuiTwo.dart';
import 'package:assignment_ui/profile%20ui%20stack%20task/profile_ui_stack.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/Shopping_Cart_Home.dart';
import 'package:assignment_ui/main_routes_screen/routes_page.dart';
import 'package:assignment_ui/tourism_app/screens/home_screen/tourism_home_screen.dart';
import 'package:assignment_ui/tourism_gofast_app/screens/login_screen/gofast_login_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesPage.id,
      routes: {
        RoutesPage.id: (context) => RoutesPage(),
        //BankingHomeScreen
        BankingHomeScreen.id: (context) => BankingHomeScreen(),

        // ContactBook_ui
        ContactUiSplash.id: (context) => ContactUiSplash(),

        // Drawer Task
        DrawerTaskScreen.id: (context) => DrawerTaskScreen(),
        // Expansion sample
        ExpansionTileSample.id: (context) => ExpansionTileSample(),
        // Expansion_Tile_card_ui
        ExpansionTileCardSample.id: (context) => ExpansionTileCardSample(),
        // Farmers Fresh Zone
        FarmersFreshZone.id: (context) => FarmersFreshZone(),
        // gridview builder task
        GridviewBuilderScreen.id: (context) => GridviewBuilderScreen(),
        // GridView_Stack task
        GridViewStackScreen.id: (context) => GridViewStackScreen(),
        // Hotel app
        HotelMainScreen.id: (context) => HotelMainScreen(),
        // Invoice_First_Screen
        InvoiceFirstScreen.id: (context) => InvoiceFirstScreen(),
        // LoginSignUpUi
        LoginSignUpSplash.id: (context) => LoginSignUpSplash(),
        // Music_App_Home_Screen
        MusicAppMianScreen.id: (context) => MusicAppMianScreen(),
        // profile ui 2
        ProfileUiTwoHome.id: (context) => ProfileUiTwoHome(),
        // profile ui stack task
        ProfileUiStackScreen.id: (context) => ProfileUiStackScreen(),
        // StaggeredGridView
        StaggeredGridViewScreen.id: (context) => StaggeredGridViewScreen(),
        // Tourism_App_Ui
        TourismAppUi.id: (context) => TourismAppUi(),
        // Tourism_Gofast_App
        GofastLoginPage.id: (context) => GofastLoginPage(),
        // Whatsapp UI
        CommunityTab.id: (context) => CommunityTab(),
      },
    );
  }
}
