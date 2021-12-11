import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PlutoColumnGroup extends Equatable {
  final String title;

  final List<String>? fields;

  final List<PlutoColumnGroup>? children;

  final double? titlePadding;

  /// Text alignment in Cell. (Left, Right, Center)
  final PlutoColumnTextAlign titleTextAlign;

  /// Customize the column with TextSpan or WidgetSpan instead of the column's title string.
  ///
  /// ```
  /// titleSpan: const TextSpan(
  ///   children: [
  ///     WidgetSpan(
  ///       child: Text(
  ///         '* ',
  ///         style: TextStyle(color: Colors.red),
  ///       ),
  ///     ),
  ///     TextSpan(text: 'column title'),
  ///   ],
  /// ),
  /// ```
  final InlineSpan? titleSpan;

  PlutoColumnGroup({
    required this.title,
    this.fields,
    this.children,
    this.titlePadding,
    this.titleSpan,
    this.titleTextAlign = PlutoColumnTextAlign.center,
  })  : assert(fields == null
            ? (children != null && children.isNotEmpty)
            : fields.isNotEmpty),
        _key = UniqueKey() {
    hasFields = fields != null;

    hasChildren = !hasFields;
  }

  Key get key => _key;

  late final Key _key;

  late final bool hasFields;

  late final bool hasChildren;

  @override
  List<Object?> get props => [
        title,
        fields,
        children,
        titlePadding,
        titleTextAlign,
        titleSpan,
      ];
}

class PlutoColumnGroupPair extends Equatable {
  final PlutoColumnGroup group;

  final List<PlutoColumn> columns;

  PlutoColumnGroupPair({
    required this.group,
    required this.columns,
  });

  @override
  List<Object?> get props => [group, columns];
}
