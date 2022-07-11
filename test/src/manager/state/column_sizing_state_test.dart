import 'package:flutter_test/flutter_test.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../../../helper/column_helper.dart';

void main() {
  group('getColumnsAutoSizeHelper', () {
    test('columns.isEmpty 이면 assertion 이 발생 되어야 한다.', () {
      final stateManager = PlutoGridStateManager(
        columns: [],
        rows: [],
        gridFocusNode: null,
        scroll: null,
        configuration: const PlutoGridConfiguration(
          columnSize: PlutoGridColumnSizeConfig(
            autoSizeMode: PlutoAutoSizeMode.equal,
          ),
        ),
      );

      expect(() {
        stateManager.getColumnsAutoSizeHelper(
          columns: [],
          maxWidth: 500,
        );
      }, throwsAssertionError);
    });

    test('PlutoAutoSizeMode.none 이면 assertion 이 발생 되어야 한다.', () {
      final columns = ColumnHelper.textColumn('title', count: 5);

      final stateManager = PlutoGridStateManager(
        columns: columns,
        rows: [],
        gridFocusNode: null,
        scroll: null,
        configuration: const PlutoGridConfiguration(
          columnSize: PlutoGridColumnSizeConfig(
            autoSizeMode: PlutoAutoSizeMode.none,
          ),
        ),
      );

      expect(() {
        stateManager.getColumnsAutoSizeHelper(
          columns: columns,
          maxWidth: 500,
        );
      }, throwsAssertionError);
    });

    test('PlutoAutoSizeMode.equal 이면 PlutoAutoSize 를 리턴해야 한다.', () {
      final columns = ColumnHelper.textColumn('title', count: 5);

      final stateManager = PlutoGridStateManager(
        columns: columns,
        rows: [],
        gridFocusNode: null,
        scroll: null,
        configuration: const PlutoGridConfiguration(
          columnSize: PlutoGridColumnSizeConfig(
            autoSizeMode: PlutoAutoSizeMode.equal,
          ),
        ),
      );

      final helper = stateManager.getColumnsAutoSizeHelper(
        columns: columns,
        maxWidth: 500,
      );

      expect(helper, isA<PlutoAutoSize>());
    });

    test('PlutoAutoSizeMode.scale 이면 PlutoAutoSize 를 리턴해야 한다.', () {
      final columns = ColumnHelper.textColumn('title', count: 5);

      final stateManager = PlutoGridStateManager(
        columns: columns,
        rows: [],
        gridFocusNode: null,
        scroll: null,
        configuration: const PlutoGridConfiguration(
          columnSize: PlutoGridColumnSizeConfig(
            autoSizeMode: PlutoAutoSizeMode.scale,
          ),
        ),
      );

      final helper = stateManager.getColumnsAutoSizeHelper(
        columns: columns,
        maxWidth: 500,
      );

      expect(helper, isA<PlutoAutoSize>());
    });

    test('scale 0.5를 리턴 해야 한다.', () {
      final columns = ColumnHelper.textColumn('title', count: 5);
      const maxWidth = 500.0;
      final double columnsWidth = columns.fold<double>(
        0,
        (p, e) => p + e.width,
      );

      final stateManager = PlutoGridStateManager(
        columns: columns,
        rows: [],
        gridFocusNode: null,
        scroll: null,
        configuration: const PlutoGridConfiguration(
          columnSize: PlutoGridColumnSizeConfig(
            autoSizeMode: PlutoAutoSizeMode.scale,
          ),
        ),
      );

      final helper = stateManager.getColumnsAutoSizeHelper(
        columns: columns,
        maxWidth: maxWidth,
      );

      // maxWidth 500 / columns width 1000
      expect(columnsWidth, 1000);
      expect((helper as PlutoAutoSizeScale).scale, 0.5);
    });

    test('scale 2 를 리턴 해야 한다.', () {
      final columns = ColumnHelper.textColumn('title', count: 5);
      const maxWidth = 2000.0;
      final double columnsWidth = columns.fold<double>(
        0,
        (p, e) => p + e.width,
      );

      final stateManager = PlutoGridStateManager(
        columns: columns,
        rows: [],
        gridFocusNode: null,
        scroll: null,
        configuration: const PlutoGridConfiguration(
          columnSize: PlutoGridColumnSizeConfig(
            autoSizeMode: PlutoAutoSizeMode.scale,
          ),
        ),
      );

      final helper = stateManager.getColumnsAutoSizeHelper(
        columns: columns,
        maxWidth: maxWidth,
      );

      // maxWidth 2000 / columns width 1000
      expect(columnsWidth, 1000);
      expect((helper as PlutoAutoSizeScale).scale, 2);
    });
  });

  group('getColumnsResizeHelper', () {
    test('PlutoResizeMode.none 이면 assertion 이 발생 되어야 한다.', () {
      final columns = ColumnHelper.textColumn('title', count: 5);

      final stateManager = PlutoGridStateManager(
        columns: columns,
        rows: [],
        gridFocusNode: null,
        scroll: null,
        configuration: const PlutoGridConfiguration(
          columnSize: PlutoGridColumnSizeConfig(
            resizeMode: PlutoResizeMode.none,
          ),
        ),
      );

      expect(() {
        stateManager.getColumnsResizeHelper(
          columns: columns,
          column: columns.first,
          offset: 10,
        );
      }, throwsAssertionError);
    });

    test('PlutoResizeMode.normal 이면 assertion 이 발생 되어야 한다.', () {
      final columns = ColumnHelper.textColumn('title', count: 5);

      final stateManager = PlutoGridStateManager(
        columns: columns,
        rows: [],
        gridFocusNode: null,
        scroll: null,
        configuration: const PlutoGridConfiguration(
          columnSize: PlutoGridColumnSizeConfig(
            resizeMode: PlutoResizeMode.normal,
          ),
        ),
      );

      expect(() {
        stateManager.getColumnsResizeHelper(
          columns: columns,
          column: columns.first,
          offset: 10,
        );
      }, throwsAssertionError);
    });

    test('columns.isEmpty 이면 assertion 이 발생 되어야 한다.', () {
      final columns = <PlutoColumn>[];

      final stateManager = PlutoGridStateManager(
        columns: columns,
        rows: [],
        gridFocusNode: null,
        scroll: null,
        configuration: const PlutoGridConfiguration(
          columnSize: PlutoGridColumnSizeConfig(
            resizeMode: PlutoResizeMode.normal,
          ),
        ),
      );

      expect(() {
        stateManager.getColumnsResizeHelper(
          columns: columns,
          column: ColumnHelper.textColumn('title').first,
          offset: 10,
        );
      }, throwsAssertionError);
    });
  });
}
