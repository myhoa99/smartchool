import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:smartschool/app/model/onboarding_info.dart';

class OnbroadingScreenController extends GetxController {
  //TODO: Implement OnbroadingScreenController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  final onboardings = [
    {
      "index": 0,
      "image": "assets/svg/onboarding1.svg",
      "title": "Kinh doanh Online tiện lợi",
      "content":
          "Không cần bỏ tiền vốn nhập hàng, cam kết sản phẩm chính hãng đến từ các thương hiệu uy tín."
    },
    {
      "index": 1,
      "image": "assets/svg/onboarding2.svg",
      "title": "Hoa hồng hấp dẫn",
      "content":
          "Nhận hoa hồng trực tiếp trị giá lên đến 50% giá bán với mỗi sản phẩm được bán."
    },
    {
      "index": 2,
      "image": "assets/svg/onboarding3.svg",
      "title": "Quản lý đơn hàng  ",
      "content":
          "Dễ dàng thống kê và theo dõi tình trạng giao nhận của đơn hàng Giao vận & thanh toán."
    },
  ];
  final sliderIndex = 0.obs;
  final textVisible = false.obs;
  final textTitle = "".obs;
  final textContent = "".obs;
  final carouselCtrl = CarouselController();
  final textButton = "Tiếp theo".obs;

  var currentPage = 0.obs;
  var controllerPage;
  void setSliderIndex(int inx) async {
    sliderIndex.value = inx;
    textVisible.value = false;
    update();
    await Future.delayed(const Duration(milliseconds: 300));
    textTitle.value = onboardings[inx]["title"] as String;
    textContent.value = onboardings[inx]["content"] as String;
    textVisible.value = true;
    textButton.value = "Tiếp theo";
    if (inx == onboardings.length - 1) {
      textButton.value = "Tham gia ngay";
    }
    update();
  }
}
