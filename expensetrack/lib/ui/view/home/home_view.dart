import 'package:expensetrack/ui/view/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
 const HomeView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<HomeViewModel>.reactive(
     viewModelBuilder: () => HomeViewModel(),
     builder: (context, model, child) => Scaffold(),
   );
 }
}