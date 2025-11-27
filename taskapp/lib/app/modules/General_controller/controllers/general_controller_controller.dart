import 'package:get/get.dart';

class GeneralControllerController extends GetxController {

  // Observable index
  var currentIndex = 0.obs;
  // Function to change index
  void changeIndex(int index) {
  currentIndex.value = index;
  }


}





// CustomBottomNav(
// pages: [
// HomePage(),
// QuizAppsPage(),
// LoginPage(),
// PresentationMainPage(),
// HistoryMainPage(),
// FigmaMainPage(),
// ProfilePage(),
// ],
// items: const [
// BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
// BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'Quiz'),
// BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
// BottomNavigationBarItem(
// icon: Icon(Icons.present_to_all), label: 'Presentation'),
// BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
// BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Figma'),
// BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
// ],
// );