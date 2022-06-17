import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:web_template/utils/const.dart';
import 'package:web_template/utils/dataGridSource.dart';

import 'package:syncfusion_flutter_core/theme.dart';

import '../../../controller/dataGridController.dart';

class DataGridWidget extends GetResponsiveView<DataGridsController> {
  DataGridWidget({Key? key}) : super(key: key);

  double dataPagerHeight = 60;

  @override
  Widget desktop() {
    return _buildLayoutBuilder();
  }

  Widget _buildDataGrid() {
    return SfDataGrid(
        source: controller.infoDataGridSource,
        rowsPerPage: controller.rowsPerPage,
        allowSorting: true,
        columnWidthMode:
            screen.isDesktop ? ColumnWidthMode.fill : ColumnWidthMode.none,
        columns: <GridColumn>[
          GridColumn(
            width: screen.isDesktop ? 120.0 : double.nan,
            columnName: 'No',
            label: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text(
                'No',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            width: screen.isDesktop ? 150.0 : double.nan,
            columnWidthMode: screen.isDesktop
                ? ColumnWidthMode.none
                : ColumnWidthMode.fitByColumnName,
            autoFitPadding: const EdgeInsets.all(8),
            columnName: 'Name',
            label: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text(
                'Name',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            width: screen.isDesktop ? 100.0 : double.nan,
            columnName: 'Nik',
            label: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text(
                'Nik',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            width: screen.isDesktop ? 130.0 : double.nan,
            columnName: 'No Telp',
            label: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text(
                'No Telp',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            width: screen.isDesktop ? 130.0 : double.nan,
            columnName: 'No Telp Keluarga',
            label: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text(
                'No Telp Keluarga',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            width: screen.isDesktop ? 400 : double.nan,
            columnName: 'Alamat',
            label: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text(
                'Alamat',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ]);
  }

  Widget _buildDataPager() {
    return SfDataPagerTheme(
      data: SfDataPagerThemeData(
        brightness: Brightness.light,
        selectedItemColor: mainColor,
      ),
      child: SfDataPager(
        delegate: controller.infoDataGridSource,
        availableRowsPerPage: const <int>[15, 20, 25],
        pageCount:
            controller.infoDataGridSource.data.length / controller.rowsPerPage,
        onRowsPerPageChanged: (int? rowsPerPage) {
          // setState(() {
          controller.rowsPerPage = rowsPerPage!;
          // });
        },
      ),
    );
  }

  Widget _buildLayoutBuilder() {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
      return Column(
        children: <Widget>[
          SizedBox(
              height: constraint.maxHeight - dataPagerHeight,
              width: constraint.maxWidth,
              child: _buildDataGrid()),
          Container(
            height: dataPagerHeight,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface.withOpacity(0.12),
                border: Border(
                    top: BorderSide(
                        width: .5,
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.12)))),
            child: Align(child: _buildDataPager()),
          )
        ],
      );
    });
  }
}
