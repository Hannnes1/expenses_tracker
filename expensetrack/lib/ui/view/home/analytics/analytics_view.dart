import 'package:expensetrack/ui/view/home/analytics/analytics_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AnalyticsView extends StatelessWidget {
 const AnalyticsView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<AnalyticsViewModel>.reactive(
     viewModelBuilder: () => AnalyticsViewModel(),
     onModelReady: (model) => model.init(),
     builder: (context, model, child) => Scaffold(),
   );
 }
}