// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QuizEventTearOff {
  const _$QuizEventTearOff();

  _OnStart onStart() {
    return const _OnStart();
  }

  _OnYesButtonPressed onYesButtonPressed() {
    return const _OnYesButtonPressed();
  }

  _OnNoButtonPressed onNoButtonPressed() {
    return const _OnNoButtonPressed();
  }
}

// ignore: unused_element
const $QuizEvent = _$QuizEventTearOff();

mixin _$QuizEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onStart(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onStart(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onStart(_OnStart value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onStart(_OnStart value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    @required Result orElse(),
  });
}

abstract class $QuizEventCopyWith<$Res> {
  factory $QuizEventCopyWith(QuizEvent value, $Res Function(QuizEvent) then) =
      _$QuizEventCopyWithImpl<$Res>;
}

class _$QuizEventCopyWithImpl<$Res> implements $QuizEventCopyWith<$Res> {
  _$QuizEventCopyWithImpl(this._value, this._then);

  final QuizEvent _value;
  // ignore: unused_field
  final $Res Function(QuizEvent) _then;
}

abstract class _$OnStartCopyWith<$Res> {
  factory _$OnStartCopyWith(_OnStart value, $Res Function(_OnStart) then) =
      __$OnStartCopyWithImpl<$Res>;
}

class __$OnStartCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$OnStartCopyWith<$Res> {
  __$OnStartCopyWithImpl(_OnStart _value, $Res Function(_OnStart) _then)
      : super(_value, (v) => _then(v as _OnStart));

  @override
  _OnStart get _value => super._value as _OnStart;
}

class _$_OnStart with DiagnosticableTreeMixin implements _OnStart {
  const _$_OnStart();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.onStart()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'QuizEvent.onStart'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onStart(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
  }) {
    assert(onStart != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return onStart();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onStart(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onStart != null) {
      return onStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onStart(_OnStart value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
  }) {
    assert(onStart != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return onStart(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onStart(_OnStart value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onStart != null) {
      return onStart(this);
    }
    return orElse();
  }
}

abstract class _OnStart implements QuizEvent {
  const factory _OnStart() = _$_OnStart;
}

abstract class _$OnYesButtonPressedCopyWith<$Res> {
  factory _$OnYesButtonPressedCopyWith(
          _OnYesButtonPressed value, $Res Function(_OnYesButtonPressed) then) =
      __$OnYesButtonPressedCopyWithImpl<$Res>;
}

class __$OnYesButtonPressedCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res>
    implements _$OnYesButtonPressedCopyWith<$Res> {
  __$OnYesButtonPressedCopyWithImpl(
      _OnYesButtonPressed _value, $Res Function(_OnYesButtonPressed) _then)
      : super(_value, (v) => _then(v as _OnYesButtonPressed));

  @override
  _OnYesButtonPressed get _value => super._value as _OnYesButtonPressed;
}

class _$_OnYesButtonPressed
    with DiagnosticableTreeMixin
    implements _OnYesButtonPressed {
  const _$_OnYesButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.onYesButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizEvent.onYesButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnYesButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onStart(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
  }) {
    assert(onStart != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return onYesButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onStart(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onYesButtonPressed != null) {
      return onYesButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onStart(_OnStart value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
  }) {
    assert(onStart != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return onYesButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onStart(_OnStart value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onYesButtonPressed != null) {
      return onYesButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _OnYesButtonPressed implements QuizEvent {
  const factory _OnYesButtonPressed() = _$_OnYesButtonPressed;
}

abstract class _$OnNoButtonPressedCopyWith<$Res> {
  factory _$OnNoButtonPressedCopyWith(
          _OnNoButtonPressed value, $Res Function(_OnNoButtonPressed) then) =
      __$OnNoButtonPressedCopyWithImpl<$Res>;
}

class __$OnNoButtonPressedCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res>
    implements _$OnNoButtonPressedCopyWith<$Res> {
  __$OnNoButtonPressedCopyWithImpl(
      _OnNoButtonPressed _value, $Res Function(_OnNoButtonPressed) _then)
      : super(_value, (v) => _then(v as _OnNoButtonPressed));

  @override
  _OnNoButtonPressed get _value => super._value as _OnNoButtonPressed;
}

class _$_OnNoButtonPressed
    with DiagnosticableTreeMixin
    implements _OnNoButtonPressed {
  const _$_OnNoButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.onNoButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'QuizEvent.onNoButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnNoButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onStart(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
  }) {
    assert(onStart != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return onNoButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onStart(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onNoButtonPressed != null) {
      return onNoButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onStart(_OnStart value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
  }) {
    assert(onStart != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return onNoButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onStart(_OnStart value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onNoButtonPressed != null) {
      return onNoButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _OnNoButtonPressed implements QuizEvent {
  const factory _OnNoButtonPressed() = _$_OnNoButtonPressed;
}

class _$QuizStateTearOff {
  const _$QuizStateTearOff();

  _QuizState call(
      {@required Question question,
      @required bool gameStarted,
      @required bool questionLoading,
      @required int correctAnswers,
      @required int totalAnswers}) {
    return _QuizState(
      question: question,
      gameStarted: gameStarted,
      questionLoading: questionLoading,
      correctAnswers: correctAnswers,
      totalAnswers: totalAnswers,
    );
  }
}

// ignore: unused_element
const $QuizState = _$QuizStateTearOff();

mixin _$QuizState {
  Question get question;
  bool get gameStarted;
  bool get questionLoading;
  int get correctAnswers;
  int get totalAnswers;

  $QuizStateCopyWith<QuizState> get copyWith;
}

abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res>;
  $Res call(
      {Question question,
      bool gameStarted,
      bool questionLoading,
      int correctAnswers,
      int totalAnswers});
}

class _$QuizStateCopyWithImpl<$Res> implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  final QuizState _value;
  // ignore: unused_field
  final $Res Function(QuizState) _then;

  @override
  $Res call({
    Object question = freezed,
    Object gameStarted = freezed,
    Object questionLoading = freezed,
    Object correctAnswers = freezed,
    Object totalAnswers = freezed,
  }) {
    return _then(_value.copyWith(
      question: question == freezed ? _value.question : question as Question,
      gameStarted:
          gameStarted == freezed ? _value.gameStarted : gameStarted as bool,
      questionLoading: questionLoading == freezed
          ? _value.questionLoading
          : questionLoading as bool,
      correctAnswers: correctAnswers == freezed
          ? _value.correctAnswers
          : correctAnswers as int,
      totalAnswers:
          totalAnswers == freezed ? _value.totalAnswers : totalAnswers as int,
    ));
  }
}

abstract class _$QuizStateCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory _$QuizStateCopyWith(
          _QuizState value, $Res Function(_QuizState) then) =
      __$QuizStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Question question,
      bool gameStarted,
      bool questionLoading,
      int correctAnswers,
      int totalAnswers});
}

class __$QuizStateCopyWithImpl<$Res> extends _$QuizStateCopyWithImpl<$Res>
    implements _$QuizStateCopyWith<$Res> {
  __$QuizStateCopyWithImpl(_QuizState _value, $Res Function(_QuizState) _then)
      : super(_value, (v) => _then(v as _QuizState));

  @override
  _QuizState get _value => super._value as _QuizState;

  @override
  $Res call({
    Object question = freezed,
    Object gameStarted = freezed,
    Object questionLoading = freezed,
    Object correctAnswers = freezed,
    Object totalAnswers = freezed,
  }) {
    return _then(_QuizState(
      question: question == freezed ? _value.question : question as Question,
      gameStarted:
          gameStarted == freezed ? _value.gameStarted : gameStarted as bool,
      questionLoading: questionLoading == freezed
          ? _value.questionLoading
          : questionLoading as bool,
      correctAnswers: correctAnswers == freezed
          ? _value.correctAnswers
          : correctAnswers as int,
      totalAnswers:
          totalAnswers == freezed ? _value.totalAnswers : totalAnswers as int,
    ));
  }
}

class _$_QuizState with DiagnosticableTreeMixin implements _QuizState {
  const _$_QuizState(
      {@required this.question,
      @required this.gameStarted,
      @required this.questionLoading,
      @required this.correctAnswers,
      @required this.totalAnswers})
      : assert(question != null),
        assert(gameStarted != null),
        assert(questionLoading != null),
        assert(correctAnswers != null),
        assert(totalAnswers != null);

  @override
  final Question question;
  @override
  final bool gameStarted;
  @override
  final bool questionLoading;
  @override
  final int correctAnswers;
  @override
  final int totalAnswers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizState(question: $question, gameStarted: $gameStarted, questionLoading: $questionLoading, correctAnswers: $correctAnswers, totalAnswers: $totalAnswers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizState'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('gameStarted', gameStarted))
      ..add(DiagnosticsProperty('questionLoading', questionLoading))
      ..add(DiagnosticsProperty('correctAnswers', correctAnswers))
      ..add(DiagnosticsProperty('totalAnswers', totalAnswers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuizState &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.gameStarted, gameStarted) ||
                const DeepCollectionEquality()
                    .equals(other.gameStarted, gameStarted)) &&
            (identical(other.questionLoading, questionLoading) ||
                const DeepCollectionEquality()
                    .equals(other.questionLoading, questionLoading)) &&
            (identical(other.correctAnswers, correctAnswers) ||
                const DeepCollectionEquality()
                    .equals(other.correctAnswers, correctAnswers)) &&
            (identical(other.totalAnswers, totalAnswers) ||
                const DeepCollectionEquality()
                    .equals(other.totalAnswers, totalAnswers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(gameStarted) ^
      const DeepCollectionEquality().hash(questionLoading) ^
      const DeepCollectionEquality().hash(correctAnswers) ^
      const DeepCollectionEquality().hash(totalAnswers);

  @override
  _$QuizStateCopyWith<_QuizState> get copyWith =>
      __$QuizStateCopyWithImpl<_QuizState>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState(
      {@required Question question,
      @required bool gameStarted,
      @required bool questionLoading,
      @required int correctAnswers,
      @required int totalAnswers}) = _$_QuizState;

  @override
  Question get question;
  @override
  bool get gameStarted;
  @override
  bool get questionLoading;
  @override
  int get correctAnswers;
  @override
  int get totalAnswers;
  @override
  _$QuizStateCopyWith<_QuizState> get copyWith;
}
