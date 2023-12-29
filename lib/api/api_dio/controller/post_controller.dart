import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sept1_batch/api/api_dio/service/dio_service.dart';
import '../model/post_model.dart';

class PostController extends GetxController {
  RxList postList = RxList();
  RxBool isloading = true.obs;
  RxBool isInternetConncted = true.obs;
  RxBool isListScrolldown = false.obs;

  var url = "https://jsonplaceholder.typicode.com/posts";

  var itemController =
      ItemScrollController(); //to perform scroll actions in scrollable+positioned_list
  //for checking internet connection

  checkIfInternetConnected() async {
    isInternetConncted.value = await InternetConnectionChecker().hasConnection;
  }

//calling api and get response
  getPost() async {
    checkIfInternetConnected();
    isloading.value = true;
    var response = await DioService().getMethod(url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        postList.add(PostModel.fromJson(element));
      });
      isloading.value = false;
    }
  }

  scrollDown() {
    itemController.scrollTo(
        index: postList.length,
        duration: Duration(seconds: 2),
        curve: Curves.bounceInOut);
    isListScrolldown.value = true;
  }

  scrollUp() {
    itemController.scrollTo(
        index: 0, duration: Duration(seconds: 2), curve: Curves.bounceInOut);
    isListScrolldown.value = false;
  }

  @override
  void onInit() {
    getPost();
    isInternetConncted();
    super.onInit();
  }
}
