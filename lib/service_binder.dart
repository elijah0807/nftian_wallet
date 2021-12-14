import 'package:get/instance_manager.dart';
import 'package:nftian_wallet/controller/data_controller.dart';

class ServicesBinder extends Bindings {
  @override
  void dependencies() {
    Get.put<DataController>(DataController(), permanent: true);

    // Get.put<LoginController>(LoginController(), permanent: true);

    print("binder");
  }
}
