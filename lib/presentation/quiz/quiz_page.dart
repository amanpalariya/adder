import 'package:adder_game/application/quiz_bloc/quiz_bloc.dart';
import 'package:adder_game/domain/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './theme.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  MyTheme myTheme;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    myTheme ??= MyTheme.fromTheme(Theme.of(context));
    return BlocConsumer<QuizBloc, QuizState>(listener: (context, state) {
      // state.map(
      //   initial: (state) {
      //     print(state);
      //   },
      //   loadingQuestion: (state) {
      //     print(state);
      //   },
      //   showingQuestion: (state) {
      //     print(state);
      //   },
      //   showingResponse: (state) {
      //     print(state);
      //   },
      // );
    }, builder: (context, state) {
      const double horizontalPadding = 16.0;
      List<Widget> children = [
        Container(
          child: _buildScorecard(state),
        ),
        SizedBox(
          height: horizontalPadding,
          width: horizontalPadding,
        ),
        Expanded(
          flex: 10,
          child: _buildQuestionCard(state),
        ),
        SizedBox(
          height: horizontalPadding,
          width: horizontalPadding,
        ),
        _buildAnswerPanel(context, state),
      ];
      return Column(
        children: <Widget>[
          Container(
            child: _buildAppBar(state),
          ),
          Expanded(
            child: OrientationBuilder(builder: (context, orientation) {
              if (orientation == Orientation.landscape) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: horizontalPadding,
                      right: horizontalPadding,
                      bottom: horizontalPadding),
                  child: Row(
                    children: children,
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: horizontalPadding,
                      right: horizontalPadding,
                      bottom: horizontalPadding),
                  child: Column(
                    children: children,
                  ),
                );
              }
            }),
          ),
        ],
      );
    });
  }

  Widget _buildTitle() {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/logo/ic_launcher.png',
          height: 32,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          "Adder",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: myTheme.primaryTextColor,
          ),
        ),
      ],
    );
  }

  Widget _makeActionButton({String tooltip, Icon icon, Function onPressed}) {
    return IconButton(
      icon: icon,
      tooltip: tooltip,
      onPressed: onPressed ?? () {},
      color: myTheme.appBarActionIconColor,
    );
  }

  Row _buildActionsRow(QuizState state) {
    List<IconButton> buttons = [];
    state.maybeMap(initial: (state) {
      buttons = [
        _makeActionButton(
            icon: Icon(Icons.info_outline),
            tooltip: "About",
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationIcon: Image.asset(
                  'assets/logo/ic_launcher.png',
                  scale: 3,
                ),
                applicationName: "Adder",
                applicationVersion: "1.0.0",
                children: [
                  Text(
                      'A game that helps you practice your addition skills. Spend time with this app and you will be rewarded.'),
                ],
              );
            })
      ];
    }, orElse: () {
      buttons = [];
    });
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: buttons,
    );
  }

  Row _buildTitleRow(QuizState state) {
    Widget titleWidget = _buildTitle();
    Row actions = _buildActionsRow(state);
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        titleWidget,
        actions,
      ],
    );
  }

  Widget _buildAppBar(QuizState state) {
    EdgeInsetsGeometry padding =
        const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0);
    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: Padding(
          padding: padding,
          child: _buildTitleRow(state),
        ),
      ),
    );
  }

  Widget _buildInfoColumn(
      {@required int data, String supportingText, Color color}) {
    color = color ?? myTheme.primaryTextColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$data',
            style: TextStyle(
              fontSize: 20,
              color: color,
            ),
          ),
        ),
        Text(
          (supportingText ?? ""),
          style: TextStyle(
            fontSize: 12,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildScorecardContent(QuizState state) {
    List<Widget> children = [];
    children = state.maybeMap(
      showingQuestion: (state) => <Widget>[
        Expanded(
          child: _buildInfoColumn(
              data: state.correctAnswersCount,
              supportingText: "Correct",
              color: myTheme.correctAnswerColor),
        ),
        Expanded(
          child: _buildInfoColumn(
              data: state.incorrectAnswersCount,
              supportingText: "Incorrect",
              color: myTheme.incorrectAnswerColor),
        ),
        Expanded(
          child: _buildInfoColumn(
              data: state.totalAnswersCount -
                  state.correctAnswersCount -
                  state.incorrectAnswersCount,
              supportingText: "Missed",
              color: myTheme.missedAnswerColor),
        ),
        Expanded(
          child: _buildInfoColumn(
            data: state.totalAnswersCount,
            supportingText: "Total",
          ),
        ),
      ],
      showingResponse: (state) => <Widget>[
        Expanded(
          child: _buildInfoColumn(
              data: state.correctAnswersCount,
              supportingText: "Correct",
              color: myTheme.correctAnswerColor),
        ),
        Expanded(
          child: _buildInfoColumn(
              data: state.incorrectAnswersCount,
              supportingText: "Incorrect",
              color: myTheme.incorrectAnswerColor),
        ),
        Expanded(
          child: _buildInfoColumn(
              data: state.totalAnswersCount -
                  state.correctAnswersCount -
                  state.incorrectAnswersCount,
              supportingText: "Missed",
              color: myTheme.missedAnswerColor),
        ),
        Expanded(
          child: _buildInfoColumn(
            data: state.totalAnswersCount,
            supportingText: "Total",
          ),
        ),
      ],
      loadingQuestion: (state) => <Widget>[
        Expanded(
          child: _buildInfoColumn(
              data: state.correctAnswersCount,
              supportingText: "Correct",
              color: myTheme.correctAnswerColor),
        ),
        Expanded(
          child: _buildInfoColumn(
              data: state.incorrectAnswersCount,
              supportingText: "Incorrect",
              color: myTheme.incorrectAnswerColor),
        ),
        Expanded(
          child: _buildInfoColumn(
              data: state.totalAnswersCount -
                  state.correctAnswersCount -
                  state.incorrectAnswersCount,
              supportingText: "Missed",
              color: myTheme.missedAnswerColor),
        ),
        Expanded(
          child: _buildInfoColumn(
            data: state.totalAnswersCount,
            supportingText: "Total",
          ),
        ),
      ],
      orElse: () => [],
    );
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.landscape) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        );
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        );
      }
    });
  }

  Widget _buildScorecard(QuizState state) {
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(16));
    EdgeInsetsGeometry padding = const EdgeInsets.all(16.0);
    return Material(
      // color: Colors.white.withOpacity(0.05),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide(color: myTheme.cardBorderColor, width: 2),
      ),
      elevation: 0,
      child: Padding(
        padding: padding,
        child: _buildScorecardContent(state),
      ),
    );
  }

  Widget _buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildStartScreen() {
    return Center(
      child: Image.asset('assets/logo/ic_launcher.png', scale: 2),
    );
  }

  String format(Duration timeLeft) {
    double seconds = timeLeft.inMilliseconds / 1000;
    return "${seconds.toStringAsFixed(2)}";
  }

  Widget _buildQuestionContent(
      Question question, Duration timeLeft, Duration maxTimePerQuestion) {
    const double padding = 16.0;
    MaterialColor timeColors = myTheme.highTimeRemainingColor;
    if (timeLeft.inSeconds < 5 && timeLeft.inSeconds > 2) {
      timeColors = myTheme.mediumTimeRemainingColor;
    } else if (timeLeft.inSeconds <= 2) {
      timeColors = myTheme.lowTimeRemainingColor;
    }
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            right: padding,
            left: padding,
            top: padding,
          ),
          child: Text(
            "Question",
            style: TextStyle(
              color: myTheme.secondaryTextColor,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Center(
              child: Text(
                question.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
        // Text(
        //   format(timeLeft),
        //   style: TextStyle(
        //     color: timeColor,
        //     fontSize: 16,
        //   ),
        // ),
        Theme(
          data: ThemeData(primarySwatch: timeColors),
          child: LinearProgressIndicator(
            // backgroundColor: timeColor,
            value: timeLeft.inMilliseconds / maxTimePerQuestion.inMilliseconds,
          ),
        ),
      ],
    );
  }

  Widget _buildResponseContent(Question question, Response response,
      Duration timeLeft, Duration totalTime) {
    Color signalColor;
    switch (response) {
      case Response.DoneRight:
        signalColor = myTheme.correctAnswerColor;
        break;
      case Response.DoneWrong:
        signalColor = myTheme.incorrectAnswerColor;
        break;
      case Response.TimeUp:
        signalColor = myTheme.missedAnswerColor;
        break;
      default:
        signalColor = myTheme.primaryTextColor;
    }
    const double padding = 16.0;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: padding,
            right: padding,
            top: padding,
          ),
          child: Text(
            "Answer",
            style: TextStyle(
              color: myTheme.secondaryTextColor,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Center(
              child: Text(
                question.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: signalColor,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
        Theme(
          data: ThemeData(primarySwatch: myTheme.lessImportantTimeRemainingColor, brightness: myTheme.brightness),
          child: Opacity(
            opacity: 0.3,
            child: LinearProgressIndicator(
              value: timeLeft.inMilliseconds / totalTime.inMilliseconds,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildQuestionCard(QuizState state) {
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(16.0));
    Widget child = _buildStartScreen();
    child = state.map(
      initial: (state) => _buildStartScreen(),
      loadingQuestion: (state) => _buildLoading(),
      showingQuestion: (state) => _buildQuestionContent(
          state.question, state.timeLeft, state.maxTimePerQuestion),
      showingResponse: (state) => _buildResponseContent(
          state.question, state.response, state.timeLeft, state.totalTime),
    );
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide(color: myTheme.cardBorderColor, width: 2),
      ),
      // elevation: 2.0,
      clipBehavior: Clip.antiAlias,
      child: child,
    );
  }

  Widget _buildButton({
    IconData iconData,
    String text,
    Function onTap,
    Color color,
    bool enabled = true,
  }) {
    EdgeInsetsGeometry padding = EdgeInsets.all(8.0);
    color = enabled && color != null ? color : myTheme.secondaryTextColor;
    onTap = enabled ? onTap : null;
    Color iconColor = color;
    //Color textColor = enabled?Colors.grey[700]:Colors.grey[300];
    Color secondaryColor = color.withOpacity(0.5);
    Color tertiaryColor = color.withOpacity(0.2);
    return AspectRatio(
      aspectRatio: 1,
      child: Material(
        shape: CircleBorder(
          side: BorderSide(color: secondaryColor, width: 2),
        ),
        // elevation: 2.0,
        // shape: CircleBorder(),
        child: InkWell(
          splashColor: tertiaryColor,
          focusColor: tertiaryColor,
          highlightColor: tertiaryColor,
          customBorder: CircleBorder(),
          onTap: onTap,
          child: Padding(
            padding: padding,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  iconData,
                  color: iconColor,
                ),
                Text(
                  text,
                  style: TextStyle(color: myTheme.secondaryTextColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildYesButton(BuildContext context, QuizState state) {
    return _buildButton(
      iconData: Icons.check,
      text: 'Yes',
      onTap: () {
        context.bloc<QuizBloc>().add(QuizEvent.onYesButtonPressed());
      },
      enabled:
          state.maybeMap(showingQuestion: (state) => true, orElse: () => false),
      color: myTheme.yesButtonColor,
    );
  }

  Widget _buildNoButton(BuildContext context, QuizState state) {
    return _buildButton(
      iconData: Icons.clear,
      text: 'No',
      onTap: () {
        context.bloc<QuizBloc>().add(QuizEvent.onNoButtonPressed());
      },
      enabled:
          state.maybeMap(showingQuestion: (state) => true, orElse: () => false),
      color: myTheme.noButtonColor,
    );
  }

  Widget _buildStartButton(BuildContext context, QuizState state) {
    return _buildButton(
      iconData: Icons.play_arrow,
      text: 'Start',
      onTap: () {
        context.bloc<QuizBloc>().add(QuizEvent.start());
      },
      color: myTheme.secondaryColor,
    );
  }

  Widget _buildAnswerPanel(BuildContext context, QuizState state) {
    return Container(
      alignment: Alignment.center,
      child: OrientationBuilder(builder: (context, orientation) {
        int flex = orientation == Orientation.landscape ? 3 : 2;
        List<Widget> children;
        state.maybeMap(
          initial: (_) {
            children = [
              Expanded(child: Container()),
              Expanded(child: _buildStartButton(context, state)),
              Expanded(child: Container()),
            ];
          },
          orElse: () {
            children = <Widget>[
              Expanded(child: Container()),
              Expanded(flex: flex, child: _buildYesButton(context, state)),
              Expanded(child: Container()),
              Expanded(flex: flex, child: _buildNoButton(context, state)),
              Expanded(child: Container()),
            ];
          },
        );
        if (orientation == Orientation.landscape) {
          return Column(
            children: children,
          );
        } else {
          return Row(
            children: children,
          );
        }
      }),
    );
  }
}
