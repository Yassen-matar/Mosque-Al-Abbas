import 'package:get/get_utils/src/get_utils/get_utils.dart';

validation(val, String type) {
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "ادخل رقم هاتف صحيح";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "ادخل برديد صحيح";
    }
  }

  if (val.isEmpty) {
    return "لايوجد بيانات";
  }

  if (val.length < 8) {
    return "لا يمكن اصغر 8";
  }

  if (val.length > 20) {
    return "لا يمكن اكبر 20";
  }
}
