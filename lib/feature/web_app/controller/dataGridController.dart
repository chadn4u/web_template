import 'package:get/get.dart';
import 'package:web_template/feature/web_app/model/dataDriver.dart';
import 'package:web_template/utils/dataGridSource.dart';

class DataGridsController extends GetxController {
  int rowsPerPage = 5;
  List<DataDrivers> dataDriver = [];
  late InfoDataGridSource infoDataGridSource;
  @override
  void onInit() {
    super.onInit();
    dataDriver = [
      DataDrivers(1, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(2, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(3, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(4, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(5, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(6, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(7, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(8, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(9, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(10, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(11, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(12, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(13, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(14, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(15, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(16, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(17, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(18, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(19, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(20, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(21, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(22, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(23, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(24, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(25, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(26, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
      DataDrivers(27, "Gunawan", "101923786", "082928371290", "088928127391",
          "JL Depok Raya Blok C299 Depok Tenggara"),
    ];
    infoDataGridSource = InfoDataGridSource(Method.DESKTOP, dataDriver);
  }
}
