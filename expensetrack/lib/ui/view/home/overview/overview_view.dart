import 'package:expensetrack/ui/view/home/overview/overview_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OverviewView extends StatelessWidget {
 const OverviewView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<OverviewViewModel>.reactive(
     viewModelBuilder: () => OverviewViewModel(),
     builder: (context, model, child) => const Scaffold(
       body: Center(
         child: Text('Hello'),
       ),
     ),
   );
 }
}