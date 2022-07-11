// Mocks generated by Mockito 5.2.0 from annotations
// in pluto_grid/test/src/manager/state/selecting_state_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;
import 'dart:ui' as _i6;

import 'package:flutter/material.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:pluto_grid/pluto_grid.dart' as _i3;
import 'package:rxdart/rxdart.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeScrollController_0 extends _i1.Fake implements _i2.ScrollController {
}

class _FakePlutoGridStateManager_1 extends _i1.Fake
    implements _i3.PlutoGridStateManager {}

class _FakePublishSubject_2<T> extends _i1.Fake
    implements _i4.PublishSubject<T> {}

class _FakeStreamSubscription_3<T> extends _i1.Fake
    implements _i5.StreamSubscription<T> {}

/// A class which mocks [LinkedScrollControllerGroup].
///
/// See the documentation for Mockito's code generation for more information.
class MockLinkedScrollControllerGroup extends _i1.Mock
    implements _i3.LinkedScrollControllerGroup {
  @override
  double get offset =>
      (super.noSuchMethod(Invocation.getter(#offset), returnValue: 0.0)
          as double);
  @override
  _i2.ScrollController addAndGet() =>
      (super.noSuchMethod(Invocation.method(#addAndGet, []),
          returnValue: _FakeScrollController_0()) as _i2.ScrollController);
  @override
  void addOffsetChangedListener(_i6.VoidCallback? onChanged) => super
      .noSuchMethod(Invocation.method(#addOffsetChangedListener, [onChanged]),
          returnValueForMissingStub: null);
  @override
  void removeOffsetChangedListener(_i6.VoidCallback? listener) => super
      .noSuchMethod(Invocation.method(#removeOffsetChangedListener, [listener]),
          returnValueForMissingStub: null);
  @override
  _i5.Future<void> animateTo(double? offset,
          {_i2.Curve? curve, Duration? duration}) =>
      (super.noSuchMethod(
          Invocation.method(
              #animateTo, [offset], {#curve: curve, #duration: duration}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  void jumpTo(double? value) =>
      super.noSuchMethod(Invocation.method(#jumpTo, [value]),
          returnValueForMissingStub: null);
  @override
  void resetScroll() => super.noSuchMethod(Invocation.method(#resetScroll, []),
      returnValueForMissingStub: null);
  @override
  void applyViewportDimension(double? value) =>
      super.noSuchMethod(Invocation.method(#applyViewportDimension, [value]),
          returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}

/// A class which mocks [PlutoGridEventManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockPlutoGridEventManager extends _i1.Mock
    implements _i3.PlutoGridEventManager {
  @override
  _i3.PlutoGridStateManager get stateManager =>
      (super.noSuchMethod(Invocation.getter(#stateManager),
              returnValue: _FakePlutoGridStateManager_1())
          as _i3.PlutoGridStateManager);
  @override
  _i4.PublishSubject<_i3.PlutoGridEvent> get subject =>
      (super.noSuchMethod(Invocation.getter(#subject),
              returnValue: _FakePublishSubject_2<_i3.PlutoGridEvent>())
          as _i4.PublishSubject<_i3.PlutoGridEvent>);
  @override
  _i5.StreamSubscription<dynamic> get subscription =>
      (super.noSuchMethod(Invocation.getter(#subscription),
              returnValue: _FakeStreamSubscription_3<dynamic>())
          as _i5.StreamSubscription<dynamic>);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void init() => super.noSuchMethod(Invocation.method(#init, []),
      returnValueForMissingStub: null);
  @override
  void addEvent(_i3.PlutoGridEvent? event) =>
      super.noSuchMethod(Invocation.method(#addEvent, [event]),
          returnValueForMissingStub: null);
  @override
  _i5.StreamSubscription<_i3.PlutoGridEvent> listener(
          void Function(_i3.PlutoGridEvent)? onData) =>
      (super.noSuchMethod(Invocation.method(#listener, [onData]),
              returnValue: _FakeStreamSubscription_3<_i3.PlutoGridEvent>())
          as _i5.StreamSubscription<_i3.PlutoGridEvent>);
}
