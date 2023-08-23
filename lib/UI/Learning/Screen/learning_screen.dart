import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/app_theme.dart';
import 'package:hd_learning_app/ui/Learning/Controller/learning_controller.dart';

class LearningScreen extends StatelessWidget {
  final LearningScreenController learningScreenController =
      Get.put(LearningScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'LEARNING',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      color: AppTheme.netralColor_100,
                      child: TabBar(
                        labelColor: AppTheme.whiteColor,
                        unselectedLabelColor: AppTheme.netralColor_900,
                        indicator: BoxDecoration(
                          color: AppTheme.infoColor_500,
                        ),
                        labelPadding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        tabs: [
                          Tab(
                              child: Text(
                            'Saat Ini',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                          Tab(
                            text: 'Selesai',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(
                            child: Center(
                              child: Text('Courses'),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text('My Courses'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
