import 'dart:math';

import 'package:injectable/injectable.dart';

/*
  Very few changes should take place inside this class. It should be treated more like a third-party package because it is strongly coupled with the question generators.
*/

@lazySingleton
///A random numbers generating utility for other classes.
class RandomGenerator{
  Random _random = Random();

  ///Returns a random number between x and y, both exclusive
  int getRandomIntegerBetween(int x, int y){
    assert((y-x)>1);
    return _random.nextInt(y-x) + 1 + x;
  }

  int getPositiveNumberLessThan(int max){
    assert(max > 1);
    return _random.nextInt(max - 1) + 1;
  }

  int getNegativeNumberGreaterThan(int min){
    assert(min < -1);
    return -getPositiveNumberLessThan(-min);
  }

  bool randomBool({double probabilityOfTrue = 0.5}){
    assert(0<=probabilityOfTrue && probabilityOfTrue<=1);
    if(probabilityOfTrue==0){
      return false;
    }else if(probabilityOfTrue==1){
      return true;
    }else{
      return (_random.nextDouble()>probabilityOfTrue?false:true);
    }
  }
}