import 'package:flutter/material.dart';
import 'package:hehehehe/screens/home/home_viewmodel.dart';
import 'package:hehehehe/screens/profile/profile_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Home View"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  viewModel.counter.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewModel.incrementValue();
                  },
                  child: const Text("Add value"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileView()),
                    );
                  },
                  child: const Text("Navigate to profile"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
