import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileController extends GetxController {
  var selectImagePath = ''.obs;
  var selectImageSize = ''.obs;

  Future<void> getProfileImage(ImageSource imgSrc) async {
    final pickedFile = await ImagePicker().getImage(source: imgSrc);
    selectImagePath.value = pickedFile!.path;
    update(['imageId']);
  }
}
