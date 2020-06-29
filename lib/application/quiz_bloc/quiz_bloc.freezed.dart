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

  _ShowQuestion showQuestion(
      {@required Question question,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required Duration timeLeft}) {
    return _ShowQuestion(
      question: question,
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      timeLeft: timeLeft,
    );
  }

  _ShowResponse showResponse(
      {@required Question question,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required Duration timeLeft,
      @required Response response}) {
    return _ShowResponse(
      question: question,
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      timeLeft: timeLeft,
      response: response,
    );
  }

  _TimeUp timeUp() {
    return const _TimeUp();
  }

  _Finish finish(
      {@required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount}) {
    return _Finish(
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
    );
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
    @required
        Result showQuestion(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft),
    @required
        Result showResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft,
            Response response),
    @required Result timeUp(),
    @required
        Result finish(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    Result showQuestion(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Duration timeLeft),
    Result showResponse(
        Question question,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        Duration timeLeft,
        Response response),
    Result timeUp(),
    Result finish(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
    @required Result showQuestion(_ShowQuestion value),
    @required Result showResponse(_ShowResponse value),
    @required Result timeUp(_TimeUp value),
    @required Result finish(_Finish value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    Result showQuestion(_ShowQuestion value),
    Result showResponse(_ShowResponse value),
    Result timeUp(_TimeUp value),
    Result finish(_Finish value),
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
    @required
        Result showQuestion(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft),
    @required
        Result showResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft,
            Response response),
    @required Result timeUp(),
    @required
        Result finish(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return start();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    Result showQuestion(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Duration timeLeft),
    Result showResponse(
        Question question,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        Duration timeLeft,
        Response response),
    Result timeUp(),
    Result finish(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
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
    @required Result showQuestion(_ShowQuestion value),
    @required Result showResponse(_ShowResponse value),
    @required Result timeUp(_TimeUp value),
    @required Result finish(_Finish value),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    Result showQuestion(_ShowQuestion value),
    Result showResponse(_ShowResponse value),
    Result timeUp(_TimeUp value),
    Result finish(_Finish value),
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
    @required
        Result showQuestion(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft),
    @required
        Result showResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft,
            Response response),
    @required Result timeUp(),
    @required
        Result finish(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return onYesButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    Result showQuestion(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Duration timeLeft),
    Result showResponse(
        Question question,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        Duration timeLeft,
        Response response),
    Result timeUp(),
    Result finish(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
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
    @required Result showQuestion(_ShowQuestion value),
    @required Result showResponse(_ShowResponse value),
    @required Result timeUp(_TimeUp value),
    @required Result finish(_Finish value),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return onYesButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    Result showQuestion(_ShowQuestion value),
    Result showResponse(_ShowResponse value),
    Result timeUp(_TimeUp value),
    Result finish(_Finish value),
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
    @required
        Result showQuestion(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft),
    @required
        Result showResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft,
            Response response),
    @required Result timeUp(),
    @required
        Result finish(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return onNoButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    Result showQuestion(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Duration timeLeft),
    Result showResponse(
        Question question,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        Duration timeLeft,
        Response response),
    Result timeUp(),
    Result finish(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
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
    @required Result showQuestion(_ShowQuestion value),
    @required Result showResponse(_ShowResponse value),
    @required Result timeUp(_TimeUp value),
    @required Result finish(_Finish value),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return onNoButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    Result showQuestion(_ShowQuestion value),
    Result showResponse(_ShowResponse value),
    Result timeUp(_TimeUp value),
    Result finish(_Finish value),
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

abstract class _$ShowQuestionCopyWith<$Res> {
  factory _$ShowQuestionCopyWith(
          _ShowQuestion value, $Res Function(_ShowQuestion) then) =
      __$ShowQuestionCopyWithImpl<$Res>;
  $Res call(
      {Question question,
      int correctAnswersCount,
      int incorrectAnswersCount,
      int totalAnswersCount,
      Duration timeLeft});
}

class __$ShowQuestionCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$ShowQuestionCopyWith<$Res> {
  __$ShowQuestionCopyWithImpl(
      _ShowQuestion _value, $Res Function(_ShowQuestion) _then)
      : super(_value, (v) => _then(v as _ShowQuestion));

  @override
  _ShowQuestion get _value => super._value as _ShowQuestion;

  @override
  $Res call({
    Object question = freezed,
    Object correctAnswersCount = freezed,
    Object incorrectAnswersCount = freezed,
    Object totalAnswersCount = freezed,
    Object timeLeft = freezed,
  }) {
    return _then(_ShowQuestion(
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
      timeLeft: timeLeft == freezed ? _value.timeLeft : timeLeft as Duration,
    ));
  }
}

class _$_ShowQuestion with DiagnosticableTreeMixin implements _ShowQuestion {
  const _$_ShowQuestion(
      {@required this.question,
      @required this.correctAnswersCount,
      @required this.incorrectAnswersCount,
      @required this.totalAnswersCount,
      @required this.timeLeft})
      : assert(question != null),
        assert(correctAnswersCount != null),
        assert(incorrectAnswersCount != null),
        assert(totalAnswersCount != null),
        assert(timeLeft != null);

  @override
  final Question question;
  @override
  final int correctAnswersCount;
  @override
  final int incorrectAnswersCount;
  @override
  final int totalAnswersCount;
  @override
  final Duration timeLeft;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.showQuestion(question: $question, correctAnswersCount: $correctAnswersCount, incorrectAnswersCount: $incorrectAnswersCount, totalAnswersCount: $totalAnswersCount, timeLeft: $timeLeft)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizEvent.showQuestion'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('correctAnswersCount', correctAnswersCount))
      ..add(DiagnosticsProperty('incorrectAnswersCount', incorrectAnswersCount))
      ..add(DiagnosticsProperty('totalAnswersCount', totalAnswersCount))
      ..add(DiagnosticsProperty('timeLeft', timeLeft));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowQuestion &&
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
            (identical(other.timeLeft, timeLeft) ||
                const DeepCollectionEquality()
                    .equals(other.timeLeft, timeLeft)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(correctAnswersCount) ^
      const DeepCollectionEquality().hash(incorrectAnswersCount) ^
      const DeepCollectionEquality().hash(totalAnswersCount) ^
      const DeepCollectionEquality().hash(timeLeft);

  @override
  _$ShowQuestionCopyWith<_ShowQuestion> get copyWith =>
      __$ShowQuestionCopyWithImpl<_ShowQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
    @required
        Result showQuestion(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft),
    @required
        Result showResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft,
            Response response),
    @required Result timeUp(),
    @required
        Result finish(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return showQuestion(question, correctAnswersCount, incorrectAnswersCount,
        totalAnswersCount, timeLeft);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    Result showQuestion(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Duration timeLeft),
    Result showResponse(
        Question question,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        Duration timeLeft,
        Response response),
    Result timeUp(),
    Result finish(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showQuestion != null) {
      return showQuestion(question, correctAnswersCount, incorrectAnswersCount,
          totalAnswersCount, timeLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
    @required Result showQuestion(_ShowQuestion value),
    @required Result showResponse(_ShowResponse value),
    @required Result timeUp(_TimeUp value),
    @required Result finish(_Finish value),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return showQuestion(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    Result showQuestion(_ShowQuestion value),
    Result showResponse(_ShowResponse value),
    Result timeUp(_TimeUp value),
    Result finish(_Finish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showQuestion != null) {
      return showQuestion(this);
    }
    return orElse();
  }
}

abstract class _ShowQuestion implements QuizEvent {
  const factory _ShowQuestion(
      {@required Question question,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required Duration timeLeft}) = _$_ShowQuestion;

  Question get question;
  int get correctAnswersCount;
  int get incorrectAnswersCount;
  int get totalAnswersCount;
  Duration get timeLeft;
  _$ShowQuestionCopyWith<_ShowQuestion> get copyWith;
}

abstract class _$ShowResponseCopyWith<$Res> {
  factory _$ShowResponseCopyWith(
          _ShowResponse value, $Res Function(_ShowResponse) then) =
      __$ShowResponseCopyWithImpl<$Res>;
  $Res call(
      {Question question,
      int correctAnswersCount,
      int incorrectAnswersCount,
      int totalAnswersCount,
      Duration timeLeft,
      Response response});
}

class __$ShowResponseCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$ShowResponseCopyWith<$Res> {
  __$ShowResponseCopyWithImpl(
      _ShowResponse _value, $Res Function(_ShowResponse) _then)
      : super(_value, (v) => _then(v as _ShowResponse));

  @override
  _ShowResponse get _value => super._value as _ShowResponse;

  @override
  $Res call({
    Object question = freezed,
    Object correctAnswersCount = freezed,
    Object incorrectAnswersCount = freezed,
    Object totalAnswersCount = freezed,
    Object timeLeft = freezed,
    Object response = freezed,
  }) {
    return _then(_ShowResponse(
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
      timeLeft: timeLeft == freezed ? _value.timeLeft : timeLeft as Duration,
      response: response == freezed ? _value.response : response as Response,
    ));
  }
}

class _$_ShowResponse with DiagnosticableTreeMixin implements _ShowResponse {
  const _$_ShowResponse(
      {@required this.question,
      @required this.correctAnswersCount,
      @required this.incorrectAnswersCount,
      @required this.totalAnswersCount,
      @required this.timeLeft,
      @required this.response})
      : assert(question != null),
        assert(correctAnswersCount != null),
        assert(incorrectAnswersCount != null),
        assert(totalAnswersCount != null),
        assert(timeLeft != null),
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
  final Duration timeLeft;
  @override
  final Response response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.showResponse(question: $question, correctAnswersCount: $correctAnswersCount, incorrectAnswersCount: $incorrectAnswersCount, totalAnswersCount: $totalAnswersCount, timeLeft: $timeLeft, response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizEvent.showResponse'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('correctAnswersCount', correctAnswersCount))
      ..add(DiagnosticsProperty('incorrectAnswersCount', incorrectAnswersCount))
      ..add(DiagnosticsProperty('totalAnswersCount', totalAnswersCount))
      ..add(DiagnosticsProperty('timeLeft', timeLeft))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowResponse &&
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
            (identical(other.timeLeft, timeLeft) ||
                const DeepCollectionEquality()
                    .equals(other.timeLeft, timeLeft)) &&
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
      const DeepCollectionEquality().hash(timeLeft) ^
      const DeepCollectionEquality().hash(response);

  @override
  _$ShowResponseCopyWith<_ShowResponse> get copyWith =>
      __$ShowResponseCopyWithImpl<_ShowResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
    @required
        Result showQuestion(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft),
    @required
        Result showResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft,
            Response response),
    @required Result timeUp(),
    @required
        Result finish(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return showResponse(question, correctAnswersCount, incorrectAnswersCount,
        totalAnswersCount, timeLeft, response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    Result showQuestion(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Duration timeLeft),
    Result showResponse(
        Question question,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        Duration timeLeft,
        Response response),
    Result timeUp(),
    Result finish(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showResponse != null) {
      return showResponse(question, correctAnswersCount, incorrectAnswersCount,
          totalAnswersCount, timeLeft, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
    @required Result showQuestion(_ShowQuestion value),
    @required Result showResponse(_ShowResponse value),
    @required Result timeUp(_TimeUp value),
    @required Result finish(_Finish value),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return showResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    Result showQuestion(_ShowQuestion value),
    Result showResponse(_ShowResponse value),
    Result timeUp(_TimeUp value),
    Result finish(_Finish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showResponse != null) {
      return showResponse(this);
    }
    return orElse();
  }
}

abstract class _ShowResponse implements QuizEvent {
  const factory _ShowResponse(
      {@required Question question,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required Duration timeLeft,
      @required Response response}) = _$_ShowResponse;

  Question get question;
  int get correctAnswersCount;
  int get incorrectAnswersCount;
  int get totalAnswersCount;
  Duration get timeLeft;
  Response get response;
  _$ShowResponseCopyWith<_ShowResponse> get copyWith;
}

abstract class _$TimeUpCopyWith<$Res> {
  factory _$TimeUpCopyWith(_TimeUp value, $Res Function(_TimeUp) then) =
      __$TimeUpCopyWithImpl<$Res>;
}

class __$TimeUpCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$TimeUpCopyWith<$Res> {
  __$TimeUpCopyWithImpl(_TimeUp _value, $Res Function(_TimeUp) _then)
      : super(_value, (v) => _then(v as _TimeUp));

  @override
  _TimeUp get _value => super._value as _TimeUp;
}

class _$_TimeUp with DiagnosticableTreeMixin implements _TimeUp {
  const _$_TimeUp();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.timeUp()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'QuizEvent.timeUp'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TimeUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
    @required
        Result showQuestion(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft),
    @required
        Result showResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft,
            Response response),
    @required Result timeUp(),
    @required
        Result finish(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return timeUp();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    Result showQuestion(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Duration timeLeft),
    Result showResponse(
        Question question,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        Duration timeLeft,
        Response response),
    Result timeUp(),
    Result finish(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timeUp != null) {
      return timeUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
    @required Result showQuestion(_ShowQuestion value),
    @required Result showResponse(_ShowResponse value),
    @required Result timeUp(_TimeUp value),
    @required Result finish(_Finish value),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return timeUp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    Result showQuestion(_ShowQuestion value),
    Result showResponse(_ShowResponse value),
    Result timeUp(_TimeUp value),
    Result finish(_Finish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timeUp != null) {
      return timeUp(this);
    }
    return orElse();
  }
}

abstract class _TimeUp implements QuizEvent {
  const factory _TimeUp() = _$_TimeUp;
}

abstract class _$FinishCopyWith<$Res> {
  factory _$FinishCopyWith(_Finish value, $Res Function(_Finish) then) =
      __$FinishCopyWithImpl<$Res>;
  $Res call(
      {int correctAnswersCount,
      int incorrectAnswersCount,
      int totalAnswersCount});
}

class __$FinishCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$FinishCopyWith<$Res> {
  __$FinishCopyWithImpl(_Finish _value, $Res Function(_Finish) _then)
      : super(_value, (v) => _then(v as _Finish));

  @override
  _Finish get _value => super._value as _Finish;

  @override
  $Res call({
    Object correctAnswersCount = freezed,
    Object incorrectAnswersCount = freezed,
    Object totalAnswersCount = freezed,
  }) {
    return _then(_Finish(
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

class _$_Finish with DiagnosticableTreeMixin implements _Finish {
  const _$_Finish(
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
    return 'QuizEvent.finish(correctAnswersCount: $correctAnswersCount, incorrectAnswersCount: $incorrectAnswersCount, totalAnswersCount: $totalAnswersCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizEvent.finish'))
      ..add(DiagnosticsProperty('correctAnswersCount', correctAnswersCount))
      ..add(DiagnosticsProperty('incorrectAnswersCount', incorrectAnswersCount))
      ..add(DiagnosticsProperty('totalAnswersCount', totalAnswersCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Finish &&
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
  _$FinishCopyWith<_Finish> get copyWith =>
      __$FinishCopyWithImpl<_Finish>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result onYesButtonPressed(),
    @required Result onNoButtonPressed(),
    @required
        Result showQuestion(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft),
    @required
        Result showResponse(
            Question question,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            Duration timeLeft,
            Response response),
    @required Result timeUp(),
    @required
        Result finish(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return finish(
        correctAnswersCount, incorrectAnswersCount, totalAnswersCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result onYesButtonPressed(),
    Result onNoButtonPressed(),
    Result showQuestion(Question question, int correctAnswersCount,
        int incorrectAnswersCount, int totalAnswersCount, Duration timeLeft),
    Result showResponse(
        Question question,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        Duration timeLeft,
        Response response),
    Result timeUp(),
    Result finish(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finish != null) {
      return finish(
          correctAnswersCount, incorrectAnswersCount, totalAnswersCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result onYesButtonPressed(_OnYesButtonPressed value),
    @required Result onNoButtonPressed(_OnNoButtonPressed value),
    @required Result showQuestion(_ShowQuestion value),
    @required Result showResponse(_ShowResponse value),
    @required Result timeUp(_TimeUp value),
    @required Result finish(_Finish value),
  }) {
    assert(start != null);
    assert(onYesButtonPressed != null);
    assert(onNoButtonPressed != null);
    assert(showQuestion != null);
    assert(showResponse != null);
    assert(timeUp != null);
    assert(finish != null);
    return finish(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result onYesButtonPressed(_OnYesButtonPressed value),
    Result onNoButtonPressed(_OnNoButtonPressed value),
    Result showQuestion(_ShowQuestion value),
    Result showResponse(_ShowResponse value),
    Result timeUp(_TimeUp value),
    Result finish(_Finish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _Finish implements QuizEvent {
  const factory _Finish(
      {@required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount}) = _$_Finish;

  int get correctAnswersCount;
  int get incorrectAnswersCount;
  int get totalAnswersCount;
  _$FinishCopyWith<_Finish> get copyWith;
}

class _$QuizStateTearOff {
  const _$QuizStateTearOff();

  _ShowingQuestion showingQuestion(
      {@required Question question,
      @required Duration timeLeft,
      @required Duration maxTimePerQuestion,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required int totalQuestionsCount}) {
    return _ShowingQuestion(
      question: question,
      timeLeft: timeLeft,
      maxTimePerQuestion: maxTimePerQuestion,
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      totalQuestionsCount: totalQuestionsCount,
    );
  }

  _Initial initial() {
    return _Initial();
  }

  _LoadingQuestion loadingQuestion(
      {@required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required int totalQuestionsCount}) {
    return _LoadingQuestion(
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      totalQuestionsCount: totalQuestionsCount,
    );
  }

  _ShowingResponse showingResponse(
      {@required Question question,
      @required Duration timeLeft,
      @required Duration totalTime,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required int totalQuestionsCount,
      @required Response response}) {
    return _ShowingResponse(
      question: question,
      timeLeft: timeLeft,
      totalTime: totalTime,
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      totalQuestionsCount: totalQuestionsCount,
      response: response,
    );
  }

  _Finished finished(
      {@required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required int totalQuestionsCount}) {
    return _Finished(
      correctAnswersCount: correctAnswersCount,
      incorrectAnswersCount: incorrectAnswersCount,
      totalAnswersCount: totalAnswersCount,
      totalQuestionsCount: totalQuestionsCount,
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
            Duration maxTimePerQuestion,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required Result initial(),
    @required
        Result loadingQuestion(
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required
        Result showingResponse(
            Question question,
            Duration timeLeft,
            Duration totalTime,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount,
            Response response),
    @required
        Result finished(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount, int totalQuestionsCount),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        Duration maxTimePerQuestion,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    Result showingResponse(
        Question question,
        Duration timeLeft,
        Duration totalTime,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount,
        Response response),
    Result finished(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showingQuestion(_ShowingQuestion value),
    @required Result initial(_Initial value),
    @required Result loadingQuestion(_LoadingQuestion value),
    @required Result showingResponse(_ShowingResponse value),
    @required Result finished(_Finished value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    Result finished(_Finished value),
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
      Duration maxTimePerQuestion,
      int correctAnswersCount,
      int incorrectAnswersCount,
      int totalAnswersCount,
      int totalQuestionsCount});
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
    Object maxTimePerQuestion = freezed,
    Object correctAnswersCount = freezed,
    Object incorrectAnswersCount = freezed,
    Object totalAnswersCount = freezed,
    Object totalQuestionsCount = freezed,
  }) {
    return _then(_ShowingQuestion(
      question: question == freezed ? _value.question : question as Question,
      timeLeft: timeLeft == freezed ? _value.timeLeft : timeLeft as Duration,
      maxTimePerQuestion: maxTimePerQuestion == freezed
          ? _value.maxTimePerQuestion
          : maxTimePerQuestion as Duration,
      correctAnswersCount: correctAnswersCount == freezed
          ? _value.correctAnswersCount
          : correctAnswersCount as int,
      incorrectAnswersCount: incorrectAnswersCount == freezed
          ? _value.incorrectAnswersCount
          : incorrectAnswersCount as int,
      totalAnswersCount: totalAnswersCount == freezed
          ? _value.totalAnswersCount
          : totalAnswersCount as int,
      totalQuestionsCount: totalQuestionsCount == freezed
          ? _value.totalQuestionsCount
          : totalQuestionsCount as int,
    ));
  }
}

class _$_ShowingQuestion
    with DiagnosticableTreeMixin
    implements _ShowingQuestion {
  const _$_ShowingQuestion(
      {@required this.question,
      @required this.timeLeft,
      @required this.maxTimePerQuestion,
      @required this.correctAnswersCount,
      @required this.incorrectAnswersCount,
      @required this.totalAnswersCount,
      @required this.totalQuestionsCount})
      : assert(question != null),
        assert(timeLeft != null),
        assert(maxTimePerQuestion != null),
        assert(correctAnswersCount != null),
        assert(incorrectAnswersCount != null),
        assert(totalAnswersCount != null),
        assert(totalQuestionsCount != null);

  @override
  final Question question;
  @override
  final Duration timeLeft;
  @override
  final Duration maxTimePerQuestion;
  @override
  final int correctAnswersCount;
  @override
  final int incorrectAnswersCount;
  @override
  final int totalAnswersCount;
  @override
  final int totalQuestionsCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizState.showingQuestion(question: $question, timeLeft: $timeLeft, maxTimePerQuestion: $maxTimePerQuestion, correctAnswersCount: $correctAnswersCount, incorrectAnswersCount: $incorrectAnswersCount, totalAnswersCount: $totalAnswersCount, totalQuestionsCount: $totalQuestionsCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizState.showingQuestion'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('timeLeft', timeLeft))
      ..add(DiagnosticsProperty('maxTimePerQuestion', maxTimePerQuestion))
      ..add(DiagnosticsProperty('correctAnswersCount', correctAnswersCount))
      ..add(DiagnosticsProperty('incorrectAnswersCount', incorrectAnswersCount))
      ..add(DiagnosticsProperty('totalAnswersCount', totalAnswersCount))
      ..add(DiagnosticsProperty('totalQuestionsCount', totalQuestionsCount));
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
            (identical(other.maxTimePerQuestion, maxTimePerQuestion) ||
                const DeepCollectionEquality()
                    .equals(other.maxTimePerQuestion, maxTimePerQuestion)) &&
            (identical(other.correctAnswersCount, correctAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.correctAnswersCount, correctAnswersCount)) &&
            (identical(other.incorrectAnswersCount, incorrectAnswersCount) ||
                const DeepCollectionEquality().equals(
                    other.incorrectAnswersCount, incorrectAnswersCount)) &&
            (identical(other.totalAnswersCount, totalAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAnswersCount, totalAnswersCount)) &&
            (identical(other.totalQuestionsCount, totalQuestionsCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalQuestionsCount, totalQuestionsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(timeLeft) ^
      const DeepCollectionEquality().hash(maxTimePerQuestion) ^
      const DeepCollectionEquality().hash(correctAnswersCount) ^
      const DeepCollectionEquality().hash(incorrectAnswersCount) ^
      const DeepCollectionEquality().hash(totalAnswersCount) ^
      const DeepCollectionEquality().hash(totalQuestionsCount);

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
            Duration maxTimePerQuestion,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required Result initial(),
    @required
        Result loadingQuestion(
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required
        Result showingResponse(
            Question question,
            Duration timeLeft,
            Duration totalTime,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount,
            Response response),
    @required
        Result finished(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount, int totalQuestionsCount),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    assert(finished != null);
    return showingQuestion(
        question,
        timeLeft,
        maxTimePerQuestion,
        correctAnswersCount,
        incorrectAnswersCount,
        totalAnswersCount,
        totalQuestionsCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        Duration maxTimePerQuestion,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    Result showingResponse(
        Question question,
        Duration timeLeft,
        Duration totalTime,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount,
        Response response),
    Result finished(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showingQuestion != null) {
      return showingQuestion(
          question,
          timeLeft,
          maxTimePerQuestion,
          correctAnswersCount,
          incorrectAnswersCount,
          totalAnswersCount,
          totalQuestionsCount);
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
    @required Result finished(_Finished value),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    assert(finished != null);
    return showingQuestion(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    Result finished(_Finished value),
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
      @required Duration maxTimePerQuestion,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required int totalQuestionsCount}) = _$_ShowingQuestion;

  Question get question;
  Duration get timeLeft;
  Duration get maxTimePerQuestion;
  int get correctAnswersCount;
  int get incorrectAnswersCount;
  int get totalAnswersCount;
  int get totalQuestionsCount;
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
            Duration maxTimePerQuestion,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required Result initial(),
    @required
        Result loadingQuestion(
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required
        Result showingResponse(
            Question question,
            Duration timeLeft,
            Duration totalTime,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount,
            Response response),
    @required
        Result finished(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount, int totalQuestionsCount),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    assert(finished != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        Duration maxTimePerQuestion,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    Result showingResponse(
        Question question,
        Duration timeLeft,
        Duration totalTime,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount,
        Response response),
    Result finished(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
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
    @required Result finished(_Finished value),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    assert(finished != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    Result finished(_Finished value),
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
      int totalAnswersCount,
      int totalQuestionsCount});
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
    Object totalQuestionsCount = freezed,
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
      totalQuestionsCount: totalQuestionsCount == freezed
          ? _value.totalQuestionsCount
          : totalQuestionsCount as int,
    ));
  }
}

class _$_LoadingQuestion
    with DiagnosticableTreeMixin
    implements _LoadingQuestion {
  _$_LoadingQuestion(
      {@required this.correctAnswersCount,
      @required this.incorrectAnswersCount,
      @required this.totalAnswersCount,
      @required this.totalQuestionsCount})
      : assert(correctAnswersCount != null),
        assert(incorrectAnswersCount != null),
        assert(totalAnswersCount != null),
        assert(totalQuestionsCount != null);

  @override
  final int correctAnswersCount;
  @override
  final int incorrectAnswersCount;
  @override
  final int totalAnswersCount;
  @override
  final int totalQuestionsCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizState.loadingQuestion(correctAnswersCount: $correctAnswersCount, incorrectAnswersCount: $incorrectAnswersCount, totalAnswersCount: $totalAnswersCount, totalQuestionsCount: $totalQuestionsCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizState.loadingQuestion'))
      ..add(DiagnosticsProperty('correctAnswersCount', correctAnswersCount))
      ..add(DiagnosticsProperty('incorrectAnswersCount', incorrectAnswersCount))
      ..add(DiagnosticsProperty('totalAnswersCount', totalAnswersCount))
      ..add(DiagnosticsProperty('totalQuestionsCount', totalQuestionsCount));
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
                    .equals(other.totalAnswersCount, totalAnswersCount)) &&
            (identical(other.totalQuestionsCount, totalQuestionsCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalQuestionsCount, totalQuestionsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(correctAnswersCount) ^
      const DeepCollectionEquality().hash(incorrectAnswersCount) ^
      const DeepCollectionEquality().hash(totalAnswersCount) ^
      const DeepCollectionEquality().hash(totalQuestionsCount);

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
            Duration maxTimePerQuestion,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required Result initial(),
    @required
        Result loadingQuestion(
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required
        Result showingResponse(
            Question question,
            Duration timeLeft,
            Duration totalTime,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount,
            Response response),
    @required
        Result finished(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount, int totalQuestionsCount),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    assert(finished != null);
    return loadingQuestion(correctAnswersCount, incorrectAnswersCount,
        totalAnswersCount, totalQuestionsCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        Duration maxTimePerQuestion,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    Result showingResponse(
        Question question,
        Duration timeLeft,
        Duration totalTime,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount,
        Response response),
    Result finished(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingQuestion != null) {
      return loadingQuestion(correctAnswersCount, incorrectAnswersCount,
          totalAnswersCount, totalQuestionsCount);
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
    @required Result finished(_Finished value),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    assert(finished != null);
    return loadingQuestion(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    Result finished(_Finished value),
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
      @required int totalAnswersCount,
      @required int totalQuestionsCount}) = _$_LoadingQuestion;

  int get correctAnswersCount;
  int get incorrectAnswersCount;
  int get totalAnswersCount;
  int get totalQuestionsCount;
  _$LoadingQuestionCopyWith<_LoadingQuestion> get copyWith;
}

abstract class _$ShowingResponseCopyWith<$Res> {
  factory _$ShowingResponseCopyWith(
          _ShowingResponse value, $Res Function(_ShowingResponse) then) =
      __$ShowingResponseCopyWithImpl<$Res>;
  $Res call(
      {Question question,
      Duration timeLeft,
      Duration totalTime,
      int correctAnswersCount,
      int incorrectAnswersCount,
      int totalAnswersCount,
      int totalQuestionsCount,
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
    Object timeLeft = freezed,
    Object totalTime = freezed,
    Object correctAnswersCount = freezed,
    Object incorrectAnswersCount = freezed,
    Object totalAnswersCount = freezed,
    Object totalQuestionsCount = freezed,
    Object response = freezed,
  }) {
    return _then(_ShowingResponse(
      question: question == freezed ? _value.question : question as Question,
      timeLeft: timeLeft == freezed ? _value.timeLeft : timeLeft as Duration,
      totalTime:
          totalTime == freezed ? _value.totalTime : totalTime as Duration,
      correctAnswersCount: correctAnswersCount == freezed
          ? _value.correctAnswersCount
          : correctAnswersCount as int,
      incorrectAnswersCount: incorrectAnswersCount == freezed
          ? _value.incorrectAnswersCount
          : incorrectAnswersCount as int,
      totalAnswersCount: totalAnswersCount == freezed
          ? _value.totalAnswersCount
          : totalAnswersCount as int,
      totalQuestionsCount: totalQuestionsCount == freezed
          ? _value.totalQuestionsCount
          : totalQuestionsCount as int,
      response: response == freezed ? _value.response : response as Response,
    ));
  }
}

class _$_ShowingResponse
    with DiagnosticableTreeMixin
    implements _ShowingResponse {
  _$_ShowingResponse(
      {@required this.question,
      @required this.timeLeft,
      @required this.totalTime,
      @required this.correctAnswersCount,
      @required this.incorrectAnswersCount,
      @required this.totalAnswersCount,
      @required this.totalQuestionsCount,
      @required this.response})
      : assert(question != null),
        assert(timeLeft != null),
        assert(totalTime != null),
        assert(correctAnswersCount != null),
        assert(incorrectAnswersCount != null),
        assert(totalAnswersCount != null),
        assert(totalQuestionsCount != null),
        assert(response != null);

  @override
  final Question question;
  @override
  final Duration timeLeft;
  @override
  final Duration totalTime;
  @override
  final int correctAnswersCount;
  @override
  final int incorrectAnswersCount;
  @override
  final int totalAnswersCount;
  @override
  final int totalQuestionsCount;
  @override
  final Response response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizState.showingResponse(question: $question, timeLeft: $timeLeft, totalTime: $totalTime, correctAnswersCount: $correctAnswersCount, incorrectAnswersCount: $incorrectAnswersCount, totalAnswersCount: $totalAnswersCount, totalQuestionsCount: $totalQuestionsCount, response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizState.showingResponse'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('timeLeft', timeLeft))
      ..add(DiagnosticsProperty('totalTime', totalTime))
      ..add(DiagnosticsProperty('correctAnswersCount', correctAnswersCount))
      ..add(DiagnosticsProperty('incorrectAnswersCount', incorrectAnswersCount))
      ..add(DiagnosticsProperty('totalAnswersCount', totalAnswersCount))
      ..add(DiagnosticsProperty('totalQuestionsCount', totalQuestionsCount))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowingResponse &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.timeLeft, timeLeft) ||
                const DeepCollectionEquality()
                    .equals(other.timeLeft, timeLeft)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.correctAnswersCount, correctAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.correctAnswersCount, correctAnswersCount)) &&
            (identical(other.incorrectAnswersCount, incorrectAnswersCount) ||
                const DeepCollectionEquality().equals(
                    other.incorrectAnswersCount, incorrectAnswersCount)) &&
            (identical(other.totalAnswersCount, totalAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAnswersCount, totalAnswersCount)) &&
            (identical(other.totalQuestionsCount, totalQuestionsCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalQuestionsCount, totalQuestionsCount)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(timeLeft) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(correctAnswersCount) ^
      const DeepCollectionEquality().hash(incorrectAnswersCount) ^
      const DeepCollectionEquality().hash(totalAnswersCount) ^
      const DeepCollectionEquality().hash(totalQuestionsCount) ^
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
            Duration maxTimePerQuestion,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required Result initial(),
    @required
        Result loadingQuestion(
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required
        Result showingResponse(
            Question question,
            Duration timeLeft,
            Duration totalTime,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount,
            Response response),
    @required
        Result finished(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount, int totalQuestionsCount),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    assert(finished != null);
    return showingResponse(
        question,
        timeLeft,
        totalTime,
        correctAnswersCount,
        incorrectAnswersCount,
        totalAnswersCount,
        totalQuestionsCount,
        response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        Duration maxTimePerQuestion,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    Result showingResponse(
        Question question,
        Duration timeLeft,
        Duration totalTime,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount,
        Response response),
    Result finished(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showingResponse != null) {
      return showingResponse(
          question,
          timeLeft,
          totalTime,
          correctAnswersCount,
          incorrectAnswersCount,
          totalAnswersCount,
          totalQuestionsCount,
          response);
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
    @required Result finished(_Finished value),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    assert(finished != null);
    return showingResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    Result finished(_Finished value),
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
      @required Duration timeLeft,
      @required Duration totalTime,
      @required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required int totalQuestionsCount,
      @required Response response}) = _$_ShowingResponse;

  Question get question;
  Duration get timeLeft;
  Duration get totalTime;
  int get correctAnswersCount;
  int get incorrectAnswersCount;
  int get totalAnswersCount;
  int get totalQuestionsCount;
  Response get response;
  _$ShowingResponseCopyWith<_ShowingResponse> get copyWith;
}

abstract class _$FinishedCopyWith<$Res> {
  factory _$FinishedCopyWith(_Finished value, $Res Function(_Finished) then) =
      __$FinishedCopyWithImpl<$Res>;
  $Res call(
      {int correctAnswersCount,
      int incorrectAnswersCount,
      int totalAnswersCount,
      int totalQuestionsCount});
}

class __$FinishedCopyWithImpl<$Res> extends _$QuizStateCopyWithImpl<$Res>
    implements _$FinishedCopyWith<$Res> {
  __$FinishedCopyWithImpl(_Finished _value, $Res Function(_Finished) _then)
      : super(_value, (v) => _then(v as _Finished));

  @override
  _Finished get _value => super._value as _Finished;

  @override
  $Res call({
    Object correctAnswersCount = freezed,
    Object incorrectAnswersCount = freezed,
    Object totalAnswersCount = freezed,
    Object totalQuestionsCount = freezed,
  }) {
    return _then(_Finished(
      correctAnswersCount: correctAnswersCount == freezed
          ? _value.correctAnswersCount
          : correctAnswersCount as int,
      incorrectAnswersCount: incorrectAnswersCount == freezed
          ? _value.incorrectAnswersCount
          : incorrectAnswersCount as int,
      totalAnswersCount: totalAnswersCount == freezed
          ? _value.totalAnswersCount
          : totalAnswersCount as int,
      totalQuestionsCount: totalQuestionsCount == freezed
          ? _value.totalQuestionsCount
          : totalQuestionsCount as int,
    ));
  }
}

class _$_Finished with DiagnosticableTreeMixin implements _Finished {
  _$_Finished(
      {@required this.correctAnswersCount,
      @required this.incorrectAnswersCount,
      @required this.totalAnswersCount,
      @required this.totalQuestionsCount})
      : assert(correctAnswersCount != null),
        assert(incorrectAnswersCount != null),
        assert(totalAnswersCount != null),
        assert(totalQuestionsCount != null);

  @override
  final int correctAnswersCount;
  @override
  final int incorrectAnswersCount;
  @override
  final int totalAnswersCount;
  @override
  final int totalQuestionsCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizState.finished(correctAnswersCount: $correctAnswersCount, incorrectAnswersCount: $incorrectAnswersCount, totalAnswersCount: $totalAnswersCount, totalQuestionsCount: $totalQuestionsCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizState.finished'))
      ..add(DiagnosticsProperty('correctAnswersCount', correctAnswersCount))
      ..add(DiagnosticsProperty('incorrectAnswersCount', incorrectAnswersCount))
      ..add(DiagnosticsProperty('totalAnswersCount', totalAnswersCount))
      ..add(DiagnosticsProperty('totalQuestionsCount', totalQuestionsCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Finished &&
            (identical(other.correctAnswersCount, correctAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.correctAnswersCount, correctAnswersCount)) &&
            (identical(other.incorrectAnswersCount, incorrectAnswersCount) ||
                const DeepCollectionEquality().equals(
                    other.incorrectAnswersCount, incorrectAnswersCount)) &&
            (identical(other.totalAnswersCount, totalAnswersCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAnswersCount, totalAnswersCount)) &&
            (identical(other.totalQuestionsCount, totalQuestionsCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalQuestionsCount, totalQuestionsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(correctAnswersCount) ^
      const DeepCollectionEquality().hash(incorrectAnswersCount) ^
      const DeepCollectionEquality().hash(totalAnswersCount) ^
      const DeepCollectionEquality().hash(totalQuestionsCount);

  @override
  _$FinishedCopyWith<_Finished> get copyWith =>
      __$FinishedCopyWithImpl<_Finished>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result showingQuestion(
            Question question,
            Duration timeLeft,
            Duration maxTimePerQuestion,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required Result initial(),
    @required
        Result loadingQuestion(
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount),
    @required
        Result showingResponse(
            Question question,
            Duration timeLeft,
            Duration totalTime,
            int correctAnswersCount,
            int incorrectAnswersCount,
            int totalAnswersCount,
            int totalQuestionsCount,
            Response response),
    @required
        Result finished(int correctAnswersCount, int incorrectAnswersCount,
            int totalAnswersCount, int totalQuestionsCount),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    assert(finished != null);
    return finished(correctAnswersCount, incorrectAnswersCount,
        totalAnswersCount, totalQuestionsCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showingQuestion(
        Question question,
        Duration timeLeft,
        Duration maxTimePerQuestion,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount),
    Result initial(),
    Result loadingQuestion(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    Result showingResponse(
        Question question,
        Duration timeLeft,
        Duration totalTime,
        int correctAnswersCount,
        int incorrectAnswersCount,
        int totalAnswersCount,
        int totalQuestionsCount,
        Response response),
    Result finished(int correctAnswersCount, int incorrectAnswersCount,
        int totalAnswersCount, int totalQuestionsCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finished != null) {
      return finished(correctAnswersCount, incorrectAnswersCount,
          totalAnswersCount, totalQuestionsCount);
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
    @required Result finished(_Finished value),
  }) {
    assert(showingQuestion != null);
    assert(initial != null);
    assert(loadingQuestion != null);
    assert(showingResponse != null);
    assert(finished != null);
    return finished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showingQuestion(_ShowingQuestion value),
    Result initial(_Initial value),
    Result loadingQuestion(_LoadingQuestion value),
    Result showingResponse(_ShowingResponse value),
    Result finished(_Finished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements QuizState {
  factory _Finished(
      {@required int correctAnswersCount,
      @required int incorrectAnswersCount,
      @required int totalAnswersCount,
      @required int totalQuestionsCount}) = _$_Finished;

  int get correctAnswersCount;
  int get incorrectAnswersCount;
  int get totalAnswersCount;
  int get totalQuestionsCount;
  _$FinishedCopyWith<_Finished> get copyWith;
}
