// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QuizEventTearOff {
  const _$QuizEventTearOff();

  _Start start() {
    return const _Start();
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
    @required Result start(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
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

abstract class _$StartCopyWith<$Res> {
  factory _$StartCopyWith(_Start value, $Res Function(_Start) then) =
      __$StartCopyWithImpl<$Res>;
}

class __$StartCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$StartCopyWith<$Res> {
  __$StartCopyWithImpl(_Start _value, $Res Function(_Start) _then)
      : super(_value, (v) => _then(v as _Start));

  @override
  _Start get _value => super._value as _Start;
}

class _$_Start with DiagnosticableTreeMixin implements _Start {
  const _$_Start();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.start()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'QuizEvent.start'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return start();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements QuizEvent {
  const factory _Start() = _$_Start;
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
    @required Result start(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return onYesButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
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
    @required Result start(_Start value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return onYesButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
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
    @required Result start(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return onNoButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
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
    @required Result start(_Start value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    return onNoButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
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

  _ShowingQuestion showingQuestion(
      {@required Question question,
      @required Duration timeLeft,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount}) {
    return _ShowingQuestion(
      question: question,
      timeLeft: timeLeft,
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
    );
  }

  _Initial initial() {
    return _Initial();
  }

  _LoadingQuestion loadingQuestion(
      {@required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount}) {
    return _LoadingQuestion(
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
    );
  }

  _ShowingResponse showingResponse(
      {@required Question question,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required Response response}) {
    return _ShowingResponse(
      question: question,
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      response: response,
    );
  }
}

// ignore: unused_element
const $QuizState = _$QuizStateTearOff();

mixin _$QuizState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result showingQuestion(
            Question question,
            Duration timeLeft,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount),
    @required Result initial(),
    @required
        Result loadingQuestion(int correctAnswersCount,
            int incorrectAnswersCount, int totalAnswersCount),
    @required
        Result showingResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Response response),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
    Result showingResponse(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Response response),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showingQuestion(_ShowingQuestion value),
    @required Result initial(_Initial value),
    @required Result loadingQuestion(_LoadingQuestion value),
    @required Result showingResponse(_ShowingResponse value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    @required Result orElse(),
  });
}

abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res>;
}

class _$QuizStateCopyWithImpl<$Res> implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  final QuizState _value;
  // ignore: unused_field
  final $Res Function(QuizState) _then;
}

abstract class _$ShowingQuestionCopyWith<$Res> {
  factory _$ShowingQuestionCopyWith(
          _ShowingQuestion value, $Res Function(_ShowingQuestion) then) =
      __$ShowingQuestionCopyWithImpl<$Res>;
  $Res call(
      {Question question,
      Duration timeLeft,
      int correctAnswersCount,
      int incorrectAnswersCount,
      int totalAnswersCount});
}

class __$ShowingQuestionCopyWithImpl<$Res> extends _$QuizStateCopyWithImpl<$Res>
    implements _$ShowingQuestionCopyWith<$Res> {
  __$ShowingQuestionCopyWithImpl(
      _ShowingQuestion _value, $Res Function(_ShowingQuestion) _then)
      : super(_value, (v) => _then(v as _ShowingQuestion));

  @override
  _ShowingQuestion get _value => super._value as _ShowingQuestion;

  @override
  $Res call({
    Object question = freezed,
    Object timeLeft = freezed,
    Object correctAnswersCount = freezed,
    Object incorrectAnswersCount = freezed,
    Object totalAnswersCount = freezed,
  }) {
    return _then(_ShowingQuestion(
      question: question == freezed ? _value.question : question as Question,
      timeLeft: timeLeft == freezed ? _value.timeLeft : timeLeft as Duration,
      correctAnswersCount: correctAnswersCount == freezed
          ? _value.correctAnswersCount
          : correctAnswersCount as int,
      incorrectAnswersCount: incorrectAnswersCount == freezed
          ? _value.incorrectAnswersCount
          : incorrectAnswersCount as int,
      totalAnswersCount: totalAnswersCount == freezed
          ? _value.totalAnswersCount
          : totalAnswersCount as int,
    ));
  }
}

class _$_ShowingQuestion
    with DiagnosticableTreeMixin
    implements _ShowingQuestion {
  const _$_ShowingQuestion(
      {@required this.question,
      @required this.timeLeft,
      @required this.correctAnswersCount,
      @required this.incorrectAnswersCount,
      @required this.totalAnswersCount})
      : assert(question != null),
        assert(timeLeft != null),
        assert(correctAnswersCount != null),
        assert(incorrectAnswersCount != null),
        assert(totalAnswersCount != null);

  @override
  final Question question;
  @override
  final Duration timeLeft;
  @override
  final int correctAnswersCount;
  @override
  final int incorrectAnswersCount;
  @override
  final int totalAnswersCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizState.showingQuestion(question: $question, timeLeft: $timeLeft, correctAnswersCount: $correctAnswersCount, incorrectAnswersCount: $incorrectAnswersCount, totalAnswersCount: $totalAnswersCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizState.showingQuestion'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('timeLeft', timeLeft))
      ..add(DiagnosticsProperty('correctAnswersCount', correctAnswersCount))
      ..add(DiagnosticsProperty('incorrectAnswersCount', incorrectAnswersCount))
      ..add(DiagnosticsProperty('totalAnswersCount', totalAnswersCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowingQuestion &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.timeLeft, timeLeft) ||
                const DeepCollectionEquality()
                    .equals(other.timeLeft, timeLeft)) &&
            (identical(other.correctAnswersCount, correctAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.correctAnswersCount, correctAnswersCount)) &&
            (identical(other.incorrectAnswersCount, incorrectAnswersCount) ||
                const DeepCollectionEquality().equals(
                    other.incorrectAnswersCount, incorrectAnswersCount)) &&
            (identical(other.totalAnswersCount, totalAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAnswersCount, totalAnswersCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(timeLeft) ^
      const DeepCollectionEquality().hash(correctAnswersCount) ^
      const DeepCollectionEquality().hash(incorrectAnswersCount) ^
      const DeepCollectionEquality().hash(totalAnswersCount);

  @override
  _$ShowingQuestionCopyWith<_ShowingQuestion> get copyWith =>
      __$ShowingQuestionCopyWithImpl<_ShowingQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result showingQuestion(
            Question question,
            Duration timeLeft,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount),
    @required Result initial(),
    @required
        Result loadingQuestion(int correctAnswersCount,
            int incorrectAnswersCount, int totalAnswersCount),
    @required
        Result showingResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Response response),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    return showingQuestion(question, timeLeft, correctAnswersCount,
        incorrectAnswersCount, totalAnswersCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
    Result showingResponse(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Response response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showingQuestion != null) {
      return showingQuestion(question, timeLeft, correctAnswersCount,
          incorrectAnswersCount, totalAnswersCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showingQuestion(_ShowingQuestion value),
    @required Result initial(_Initial value),
    @required Result loadingQuestion(_LoadingQuestion value),
    @required Result showingResponse(_ShowingResponse value),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    return showingQuestion(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showingQuestion != null) {
      return showingQuestion(this);
    }
    return orElse();
  }
}

abstract class _ShowingQuestion implements QuizState {
  const factory _ShowingQuestion(
      {@required Question question,
      @required Duration timeLeft,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount}) = _$_ShowingQuestion;

  Question get question;
  Duration get timeLeft;
  int get correctAnswersCount;
  int get incorrectAnswersCount;
  int get totalAnswersCount;
  _$ShowingQuestionCopyWith<_ShowingQuestion> get copyWith;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$QuizStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'QuizState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result showingQuestion(
            Question question,
            Duration timeLeft,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount),
    @required Result initial(),
    @required
        Result loadingQuestion(int correctAnswersCount,
            int incorrectAnswersCount, int totalAnswersCount),
    @required
        Result showingResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Response response),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
    Result showingResponse(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Response response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showingQuestion(_ShowingQuestion value),
    @required Result initial(_Initial value),
    @required Result loadingQuestion(_LoadingQuestion value),
    @required Result showingResponse(_ShowingResponse value),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuizState {
  factory _Initial() = _$_Initial;
}

abstract class _$LoadingQuestionCopyWith<$Res> {
  factory _$LoadingQuestionCopyWith(
          _LoadingQuestion value, $Res Function(_LoadingQuestion) then) =
      __$LoadingQuestionCopyWithImpl<$Res>;
  $Res call(
      {int correctAnswersCount,
      int incorrectAnswersCount,
      int totalAnswersCount});
}

class __$LoadingQuestionCopyWithImpl<$Res> extends _$QuizStateCopyWithImpl<$Res>
    implements _$LoadingQuestionCopyWith<$Res> {
  __$LoadingQuestionCopyWithImpl(
      _LoadingQuestion _value, $Res Function(_LoadingQuestion) _then)
      : super(_value, (v) => _then(v as _LoadingQuestion));

  @override
  _LoadingQuestion get _value => super._value as _LoadingQuestion;

  @override
  $Res call({
    Object correctAnswersCount = freezed,
    Object incorrectAnswersCount = freezed,
    Object totalAnswersCount = freezed,
  }) {
    return _then(_LoadingQuestion(
      correctAnswersCount: correctAnswersCount == freezed
          ? _value.correctAnswersCount
          : correctAnswersCount as int,
      incorrectAnswersCount: incorrectAnswersCount == freezed
          ? _value.incorrectAnswersCount
          : incorrectAnswersCount as int,
      totalAnswersCount: totalAnswersCount == freezed
          ? _value.totalAnswersCount
          : totalAnswersCount as int,
    ));
  }
}

class _$_LoadingQuestion
    with DiagnosticableTreeMixin
    implements _LoadingQuestion {
  _$_LoadingQuestion(
      {@required this.correctAnswersCount,
      @required this.incorrectAnswersCount,
      @required this.totalAnswersCount})
      : assert(correctAnswersCount != null),
        assert(incorrectAnswersCount != null),
        assert(totalAnswersCount != null);

  @override
  final int correctAnswersCount;
  @override
  final int incorrectAnswersCount;
  @override
  final int totalAnswersCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizState.loadingQuestion(correctAnswersCount: $correctAnswersCount, incorrectAnswersCount: $incorrectAnswersCount, totalAnswersCount: $totalAnswersCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizState.loadingQuestion'))
      ..add(DiagnosticsProperty('correctAnswersCount', correctAnswersCount))
      ..add(DiagnosticsProperty('incorrectAnswersCount', incorrectAnswersCount))
      ..add(DiagnosticsProperty('totalAnswersCount', totalAnswersCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingQuestion &&
            (identical(other.correctAnswersCount, correctAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.correctAnswersCount, correctAnswersCount)) &&
            (identical(other.incorrectAnswersCount, incorrectAnswersCount) ||
                const DeepCollectionEquality().equals(
                    other.incorrectAnswersCount, incorrectAnswersCount)) &&
            (identical(other.totalAnswersCount, totalAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAnswersCount, totalAnswersCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(correctAnswersCount) ^
      const DeepCollectionEquality().hash(incorrectAnswersCount) ^
      const DeepCollectionEquality().hash(totalAnswersCount);

  @override
  _$LoadingQuestionCopyWith<_LoadingQuestion> get copyWith =>
      __$LoadingQuestionCopyWithImpl<_LoadingQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result showingQuestion(
            Question question,
            Duration timeLeft,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount),
    @required Result initial(),
    @required
        Result loadingQuestion(int correctAnswersCount,
            int incorrectAnswersCount, int totalAnswersCount),
    @required
        Result showingResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Response response),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    return loadingQuestion(
        correctAnswersCount, incorrectAnswersCount, totalAnswersCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
    Result showingResponse(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Response response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingQuestion != null) {
      return loadingQuestion(
          correctAnswersCount, incorrectAnswersCount, totalAnswersCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showingQuestion(_ShowingQuestion value),
    @required Result initial(_Initial value),
    @required Result loadingQuestion(_LoadingQuestion value),
    @required Result showingResponse(_ShowingResponse value),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    return loadingQuestion(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingQuestion != null) {
      return loadingQuestion(this);
    }
    return orElse();
  }
}

abstract class _LoadingQuestion implements QuizState {
  factory _LoadingQuestion(
      {@required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount}) = _$_LoadingQuestion;

  int get correctAnswersCount;
  int get incorrectAnswersCount;
  int get totalAnswersCount;
  _$LoadingQuestionCopyWith<_LoadingQuestion> get copyWith;
}

abstract class _$ShowingResponseCopyWith<$Res> {
  factory _$ShowingResponseCopyWith(
          _ShowingResponse value, $Res Function(_ShowingResponse) then) =
      __$ShowingResponseCopyWithImpl<$Res>;
  $Res call(
      {Question question,
      int correctAnswersCount,
      int incorrectAnswersCount,
      int totalAnswersCount,
      Response response});
}

class __$ShowingResponseCopyWithImpl<$Res> extends _$QuizStateCopyWithImpl<$Res>
    implements _$ShowingResponseCopyWith<$Res> {
  __$ShowingResponseCopyWithImpl(
      _ShowingResponse _value, $Res Function(_ShowingResponse) _then)
      : super(_value, (v) => _then(v as _ShowingResponse));

  @override
  _ShowingResponse get _value => super._value as _ShowingResponse;

  @override
  $Res call({
    Object question = freezed,
    Object correctAnswersCount = freezed,
    Object incorrectAnswersCount = freezed,
    Object totalAnswersCount = freezed,
    Object response = freezed,
  }) {
    return _then(_ShowingResponse(
      question: question == freezed ? _value.question : question as Question,
      correctAnswersCount: correctAnswersCount == freezed
          ? _value.correctAnswersCount
          : correctAnswersCount as int,
      incorrectAnswersCount: incorrectAnswersCount == freezed
          ? _value.incorrectAnswersCount
          : incorrectAnswersCount as int,
      totalAnswersCount: totalAnswersCount == freezed
          ? _value.totalAnswersCount
          : totalAnswersCount as int,
      response: response == freezed ? _value.response : response as Response,
    ));
  }
}

class _$_ShowingResponse
    with DiagnosticableTreeMixin
    implements _ShowingResponse {
  _$_ShowingResponse(
      {@required this.question,
      @required this.correctAnswersCount,
      @required this.incorrectAnswersCount,
      @required this.totalAnswersCount,
      @required this.response})
      : assert(question != null),
        assert(correctAnswersCount != null),
        assert(incorrectAnswersCount != null),
        assert(totalAnswersCount != null),
        assert(response != null);

  @override
  final Question question;
  @override
  final int correctAnswersCount;
  @override
  final int incorrectAnswersCount;
  @override
  final int totalAnswersCount;
  @override
  final Response response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizState.showingResponse(question: $question, correctAnswersCount: $correctAnswersCount, incorrectAnswersCount: $incorrectAnswersCount, totalAnswersCount: $totalAnswersCount, response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizState.showingResponse'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('correctAnswersCount', correctAnswersCount))
      ..add(DiagnosticsProperty('incorrectAnswersCount', incorrectAnswersCount))
      ..add(DiagnosticsProperty('totalAnswersCount', totalAnswersCount))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowingResponse &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.correctAnswersCount, correctAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.correctAnswersCount, correctAnswersCount)) &&
            (identical(other.incorrectAnswersCount, incorrectAnswersCount) ||
                const DeepCollectionEquality().equals(
                    other.incorrectAnswersCount, incorrectAnswersCount)) &&
            (identical(other.totalAnswersCount, totalAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAnswersCount, totalAnswersCount)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(correctAnswersCount) ^
      const DeepCollectionEquality().hash(incorrectAnswersCount) ^
      const DeepCollectionEquality().hash(totalAnswersCount) ^
      const DeepCollectionEquality().hash(response);

  @override
  _$ShowingResponseCopyWith<_ShowingResponse> get copyWith =>
      __$ShowingResponseCopyWithImpl<_ShowingResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result showingQuestion(
            Question question,
            Duration timeLeft,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount),
    @required Result initial(),
    @required
        Result loadingQuestion(int correctAnswersCount,
            int incorrectAnswersCount, int totalAnswersCount),
    @required
        Result showingResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Response response),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    return showingResponse(question, correctAnswersCount, incorrectAnswersCount,
        totalAnswersCount, response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
    Result showingResponse(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Response response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showingResponse != null) {
      return showingResponse(question, correctAnswersCount,
          incorrectAnswersCount, totalAnswersCount, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showingQuestion(_ShowingQuestion value),
    @required Result initial(_Initial value),
    @required Result loadingQuestion(_LoadingQuestion value),
    @required Result showingResponse(_ShowingResponse value),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    return showingResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showingResponse != null) {
      return showingResponse(this);
    }
    return orElse();
  }
}

abstract class _ShowingResponse implements QuizState {
  factory _ShowingResponse(
      {@required Question question,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required Response response}) = _$_ShowingResponse;

  Question get question;
  int get correctAnswersCount;
  int get incorrectAnswersCount;
  int get totalAnswersCount;
  Response get response;
  _$ShowingResponseCopyWith<_ShowingResponse> get copyWith;
}
