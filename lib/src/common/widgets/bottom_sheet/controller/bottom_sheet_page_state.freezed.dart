// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_sheet_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomSheetState {
  List<BottomSheetPageChildDelegate> get children =>
      throw _privateConstructorUsedError;
  BottomSheetStatus get status => throw _privateConstructorUsedError;
  Map<int, double> get heights => throw _privateConstructorUsedError;
  double get dragHeight => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get prePage => throw _privateConstructorUsedError;
  double get initHeight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomSheetStateCopyWith<BottomSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomSheetStateCopyWith<$Res> {
  factory $BottomSheetStateCopyWith(
          BottomSheetState value, $Res Function(BottomSheetState) then) =
      _$BottomSheetStateCopyWithImpl<$Res, BottomSheetState>;
  @useResult
  $Res call(
      {List<BottomSheetPageChildDelegate> children,
      BottomSheetStatus status,
      Map<int, double> heights,
      double dragHeight,
      int currentPage,
      int prePage,
      double initHeight});
}

/// @nodoc
class _$BottomSheetStateCopyWithImpl<$Res, $Val extends BottomSheetState>
    implements $BottomSheetStateCopyWith<$Res> {
  _$BottomSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? status = null,
    Object? heights = null,
    Object? dragHeight = null,
    Object? currentPage = null,
    Object? prePage = null,
    Object? initHeight = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BottomSheetPageChildDelegate>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BottomSheetStatus,
      heights: null == heights
          ? _value.heights
          : heights // ignore: cast_nullable_to_non_nullable
              as Map<int, double>,
      dragHeight: null == dragHeight
          ? _value.dragHeight
          : dragHeight // ignore: cast_nullable_to_non_nullable
              as double,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      prePage: null == prePage
          ? _value.prePage
          : prePage // ignore: cast_nullable_to_non_nullable
              as int,
      initHeight: null == initHeight
          ? _value.initHeight
          : initHeight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottomSheetStateImplCopyWith<$Res>
    implements $BottomSheetStateCopyWith<$Res> {
  factory _$$BottomSheetStateImplCopyWith(_$BottomSheetStateImpl value,
          $Res Function(_$BottomSheetStateImpl) then) =
      __$$BottomSheetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BottomSheetPageChildDelegate> children,
      BottomSheetStatus status,
      Map<int, double> heights,
      double dragHeight,
      int currentPage,
      int prePage,
      double initHeight});
}

/// @nodoc
class __$$BottomSheetStateImplCopyWithImpl<$Res>
    extends _$BottomSheetStateCopyWithImpl<$Res, _$BottomSheetStateImpl>
    implements _$$BottomSheetStateImplCopyWith<$Res> {
  __$$BottomSheetStateImplCopyWithImpl(_$BottomSheetStateImpl _value,
      $Res Function(_$BottomSheetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? status = null,
    Object? heights = null,
    Object? dragHeight = null,
    Object? currentPage = null,
    Object? prePage = null,
    Object? initHeight = null,
  }) {
    return _then(_$BottomSheetStateImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BottomSheetPageChildDelegate>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BottomSheetStatus,
      heights: null == heights
          ? _value._heights
          : heights // ignore: cast_nullable_to_non_nullable
              as Map<int, double>,
      dragHeight: null == dragHeight
          ? _value.dragHeight
          : dragHeight // ignore: cast_nullable_to_non_nullable
              as double,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      prePage: null == prePage
          ? _value.prePage
          : prePage // ignore: cast_nullable_to_non_nullable
              as int,
      initHeight: null == initHeight
          ? _value.initHeight
          : initHeight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BottomSheetStateImpl extends _BottomSheetState {
  const _$BottomSheetStateImpl(
      {final List<BottomSheetPageChildDelegate> children =
          const <BottomSheetPageChildDelegate>[],
      this.status = BottomSheetStatus.idle,
      final Map<int, double> heights = const <int, double>{},
      this.dragHeight = 0,
      this.currentPage = -1,
      this.prePage = -1,
      this.initHeight = 0})
      : _children = children,
        _heights = heights,
        super._();

  final List<BottomSheetPageChildDelegate> _children;
  @override
  @JsonKey()
  List<BottomSheetPageChildDelegate> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  @JsonKey()
  final BottomSheetStatus status;
  final Map<int, double> _heights;
  @override
  @JsonKey()
  Map<int, double> get heights {
    if (_heights is EqualUnmodifiableMapView) return _heights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_heights);
  }

  @override
  @JsonKey()
  final double dragHeight;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int prePage;
  @override
  @JsonKey()
  final double initHeight;

  @override
  String toString() {
    return 'BottomSheetState(children: $children, status: $status, heights: $heights, dragHeight: $dragHeight, currentPage: $currentPage, prePage: $prePage, initHeight: $initHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomSheetStateImpl &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._heights, _heights) &&
            (identical(other.dragHeight, dragHeight) ||
                other.dragHeight == dragHeight) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.prePage, prePage) || other.prePage == prePage) &&
            (identical(other.initHeight, initHeight) ||
                other.initHeight == initHeight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_children),
      status,
      const DeepCollectionEquality().hash(_heights),
      dragHeight,
      currentPage,
      prePage,
      initHeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomSheetStateImplCopyWith<_$BottomSheetStateImpl> get copyWith =>
      __$$BottomSheetStateImplCopyWithImpl<_$BottomSheetStateImpl>(
          this, _$identity);
}

abstract class _BottomSheetState extends BottomSheetState {
  const factory _BottomSheetState(
      {final List<BottomSheetPageChildDelegate> children,
      final BottomSheetStatus status,
      final Map<int, double> heights,
      final double dragHeight,
      final int currentPage,
      final int prePage,
      final double initHeight}) = _$BottomSheetStateImpl;
  const _BottomSheetState._() : super._();

  @override
  List<BottomSheetPageChildDelegate> get children;
  @override
  BottomSheetStatus get status;
  @override
  Map<int, double> get heights;
  @override
  double get dragHeight;
  @override
  int get currentPage;
  @override
  int get prePage;
  @override
  double get initHeight;
  @override
  @JsonKey(ignore: true)
  _$$BottomSheetStateImplCopyWith<_$BottomSheetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
