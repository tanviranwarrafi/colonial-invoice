import 'package:colonial_invoice/controllers/home-controller.dart';
import 'package:colonial_invoice/screens/home-screen/pages/invoice-page.dart';
import 'package:colonial_invoice/screens/home-screen/pages/photo-page.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  HomeController controller = HomeController();
  TabController tabController;

  @override
  void initState() {
    controller.onInit();
    tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    controller = Get.put(HomeController());
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.onClose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    return DoubleBack(
      message: 'Press back again to close',
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          automaticallyImplyLeading: true,
          elevation: 2,
          title: Text(
            'Colonial Invoice',
            style: TextStyle(fontSize: block * 5, fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: 1),
          ),
          bottom: TabBar(
              controller: tabController,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              isScrollable: false,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.black,
              indicatorWeight: 2,
              dragStartBehavior: DragStartBehavior.start,
              labelPadding: EdgeInsets.only(left: block * 2.5, right: block * 2.5),
              labelStyle: TextStyle(fontSize: block * 4.5, fontWeight: FontWeight.w600, letterSpacing: 1),
              unselectedLabelStyle: TextStyle(fontSize: block * 4.5, fontWeight: FontWeight.w600, letterSpacing: 1),
              indicator: PointTabIndicator(
                position: PointTabIndicatorPosition.bottom,
                color: Colors.black,
                insets: EdgeInsets.only(bottom: block * 2),
              ),
              tabs: [Tab(text: 'Invoice'), Tab(text: 'Take Photo')]),
        ),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[InvoicePage(), TakePhotoPage()],
        ),
      ),
    );
  }
}
