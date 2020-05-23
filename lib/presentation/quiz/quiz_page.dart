import 'package:adder_game/application/quiz_bloc/quiz_bloc.dart';
import 'package:adder_game/domain/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuizBloc, QuizState>(
      listener: (context, state){},
      builder: (context, state){
        const double horizontalPadding = 16.0;
        List<Widget> children = [
          Container(
            child: _buildScorecard(state),
          ),
          SizedBox(height: horizontalPadding, width: horizontalPadding,),
          Expanded(
            flex: 10,
            child: _buildQuestionCard(state),
          ),
          SizedBox(height: horizontalPadding, width: horizontalPadding,),
          _buildAnswerPanel(context, state),
        ];
        return Column(
          children: <Widget>[
            Container(
              child: _buildAppBar(),
            ),
            Expanded(
              child: OrientationBuilder(
                builder: (context, orientation) {
                  if(orientation==Orientation.landscape){
                    return Padding(
                      padding: const EdgeInsets.only(left: horizontalPadding, right: horizontalPadding, bottom: horizontalPadding),
                      child: Row(
                        children: children,
                      ),
                    );
                  }else{
                    return Padding(
                      padding: const EdgeInsets.only(left: horizontalPadding, right: horizontalPadding, bottom: horizontalPadding),
                      child: Column(
                        children: children,
                      ),
                    );
                  }
                }
              ),
            ),
          ],
        );
      }
    );
  }

  Widget _buildTitle(){
    return Row(
      children: <Widget>[
        Image.asset('assets/logo/ic_launcher.png', height: 32,),
        SizedBox(width: 12,),
        Text(
          "Adder",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }

  Widget _makeActionButton({String tooltip, Icon icon, Function onPressed}){
    return IconButton(
      icon: icon,
      tooltip: tooltip,
      onPressed: onPressed??(){},
      color: Colors.grey[500],
    );
  }

  Row _buildActionsRow(){
    List<IconButton> buttons = [];
    buttons.add(_makeActionButton(
      icon: Icon(Icons.info_outline),
      tooltip: "About",
      onPressed: (){
        showAboutDialog(
          context: context,
          applicationIcon: Image.asset('assets/logo/ic_launcher.png', scale: 3,),
          applicationName: "Adder",
          applicationVersion: "1.0.0",
          children: [
            Text(
              'A game that helps you practice your addition skills. Spend time with this app and you will be rewarded.'
            ),
          ],
        );
      }
    ));
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: buttons,
    );
  }

  Row _buildTitleRow(){
    Widget titleWidget = _buildTitle();
    Row actions = _buildActionsRow();
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        titleWidget,
        actions,
      ],
    );
  }

  Widget _buildAppBar(){
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0);
    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: Padding(
          padding: padding,
          child: _buildTitleRow(),
        ),
      ),
    );
  }

  Widget _buildInfoColumn({@required int data, String supportingText, Color color}){
    color = color??Colors.black;
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
          (supportingText??""),
          style: TextStyle(
            fontSize: 12,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildScorecardContent(QuizState state){
    List<Widget> children = <Widget>[
      Expanded(
        child: _buildInfoColumn(
          data: state.correctAnswers,
          supportingText: "Correct",
          color: Colors.green
        ),
      ),
      Expanded(
        child: _buildInfoColumn(
          data: state.totalAnswers - state.correctAnswers,
          supportingText: "Incorrect",
          color: Colors.red
        ),
      ),
      Expanded(
        child: _buildInfoColumn(
          data: state.totalAnswers,
          supportingText: "Total",
        ),
      ),
    ];
    return OrientationBuilder(
      builder: (context, orientation) {
        if(orientation==Orientation.landscape){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          );
        }else{
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          );
        }
      }
    );
  }

  Widget _buildScorecard(QuizState state){
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(16));
    EdgeInsetsGeometry padding = const EdgeInsets.all(16.0);
    return Material(
      // color: Colors.white.withOpacity(0.05),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide(color: Colors.grey[300], width: 2),
      ),
      elevation: 0,
      child: Padding(
        padding: padding,
        child: _buildScorecardContent(state),
      ),
    );
  }

  Widget _buildLoading(){
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildStartScreen(){
    return Center(
      child: Image.asset('assets/logo/ic_launcher.png', scale: 2),
    );
  }

  Widget _buildQuestionCardContent(Question question){
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Question",
          style: TextStyle(
            color: Colors.grey[500],
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              question.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        )
      ],
    );
  }
  
  Widget _buildQuestionCard(QuizState state){
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(16.0));
    EdgeInsetsGeometry padding = const EdgeInsets.all(16.0);
    Widget child = _buildStartScreen();
    if(state.gameStarted){
      child = state.questionLoading?_buildLoading():_buildQuestionCardContent(state.question);
    }
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide(color: Colors.grey[300], width: 2),
      ),
      // elevation: 2.0,
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }

  Widget _buildButton({IconData iconData, String text, Function onTap, Color color}){
    EdgeInsetsGeometry padding = EdgeInsets.all(8.0);
    color = color??Colors.grey[300];
    Color iconColor = color;
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
                Text(text, style: TextStyle(color: Colors.grey[700]),),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildYesButton(BuildContext context, QuizState state){
    return _buildButton(
      iconData: Icons.check,
      text: 'Yes',
      onTap: state.questionLoading?(){}:(){
        context.bloc<QuizBloc>().add(QuizEvent.onYesButtonPressed());
      },
      color: Colors.green,
    );
  }

  Widget _buildNoButton(BuildContext context, QuizState state){
    return _buildButton(
      iconData: Icons.clear,
      text: 'No',
      onTap: state.questionLoading?(){}:(){
        context.bloc<QuizBloc>().add(QuizEvent.onNoButtonPressed());
      },
      color: Colors.red,
    );
  }

  Widget _buildStartButton(BuildContext context, QuizState state){
    return _buildButton(
      iconData: Icons.play_arrow,
      text: 'Start',
      onTap: (){
        context.bloc<QuizBloc>().add(QuizEvent.onStart());
      },
      color: Colors.blue,
    );
  }

  Widget _buildAnswerPanel(BuildContext context, QuizState state){
    return Container(
      alignment: Alignment.center,
      child: OrientationBuilder(
        builder: (context, orientation) {
          int flex = orientation==Orientation.landscape?3:2;
          List<Widget> children = [
            Expanded(child: Container()),
            Expanded(child: _buildStartButton(context, state)),
            Expanded(child: Container()),
          ];
          if(state.gameStarted){
            children = <Widget>[
              Expanded(child: Container()),
              Expanded(flex: flex, child: _buildYesButton(context, state)),
              Expanded(child: Container()),
              Expanded(flex: flex, child: _buildNoButton(context, state)),
              Expanded(child: Container()),
            ];
          }
          if(orientation==Orientation.landscape){
            return Column(
              children: children,
            );
          }else{
            return Row(
              children: children,
            );
          }
        }
      ),
    );
  }
}