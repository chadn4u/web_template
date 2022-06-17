import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:web_template/feature/web_app/model/dataDriver.dart';

enum Method { DESKTOP, PHONE }

class InfoDataGridSource extends DataGridSource {
  final Method screenType;
  final List<DataDrivers> data;

  InfoDataGridSource(this.screenType, this.data) {
    orderDataCount = data.length;
    buildDataGridRows();
  }

  int? orderDataCount;
  List<DataGridRow> dataGridRows = <DataGridRow>[];

  void buildDataGridRows() {
    dataGridRows = screenType == Method.DESKTOP
        ? data.map<DataGridRow>((DataDrivers order) {
            return DataGridRow(cells: <DataGridCell>[
              DataGridCell<int>(columnName: 'No', value: order.no),
              DataGridCell<String>(columnName: 'Nama', value: order.name),
              DataGridCell<String>(columnName: 'NIK', value: order.nik),
              DataGridCell<String>(columnName: 'No Telp', value: order.noTelp),
              DataGridCell<String>(
                  columnName: 'No Telp Keluargas', value: order.noTelpKeluarga),
              DataGridCell<String>(columnName: 'Alamat', value: order.alamat),
            ]);
          }).toList()
        : data.map<DataGridRow>((DataDrivers order) {
            return DataGridRow(cells: <DataGridCell>[
              DataGridCell<int>(columnName: 'No', value: order.no),
              DataGridCell<String>(columnName: 'Nama', value: order.name),
              DataGridCell<String>(columnName: 'NIK', value: order.nik),
              DataGridCell<String>(columnName: 'No Telp', value: order.noTelp),
            ]);
          }).toList();
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final int rowIndex = dataGridRows.indexOf(row);
    Color backgroundColor = Colors.transparent;
    // if (model != null && (rowIndex % 2) == 0 && culture == null) {
    //   backgroundColor = model!.backgroundColor.withOpacity(0.07);
    // }
    if (screenType == Method.DESKTOP) {
      return DataGridRowAdapter(
          color: backgroundColor,
          cells: row.getCells().map<Widget>((DataGridCell dataCell) {
            return Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerRight,
              child: Text(
                dataCell.value is int
                    ? dataCell.value.toString()
                    : dataCell.value,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(growable: false));
    } else {
      Widget buildWidget({
        AlignmentGeometry alignment = Alignment.centerLeft,
        EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
        TextOverflow textOverflow = TextOverflow.ellipsis,
        required Object value,
      }) {
        return Container(
          padding: padding,
          alignment: alignment,
          child: Text(
            value.toString(),
            overflow: textOverflow,
          ),
        );
      }

      return DataGridRowAdapter(
          color: backgroundColor,
          cells: row.getCells().map<Widget>((DataGridCell dataCell) {
            if (dataCell.columnName == 'id' ||
                dataCell.columnName == 'customerId') {
              return buildWidget(
                  alignment: Alignment.centerRight, value: dataCell.value!);
            } else {
              return buildWidget(value: dataCell.value!);
            }
          }).toList(growable: false));
    }
  }
}
