import 'package:flutter/cupertino.dart';
import 'package:hw_7/voting_dependency.dart';

class VotingValueNotifier extends ValueNotifier<int> {
  // Constructor
  VotingValueNotifier({required this.dependency}) : super(dependency.count);

  // Instance Variables
  final VotingDependency dependency;

  // Functions
  void castVote() {
    dependency.incrementVote();

    value = value + 1;
  }

  void removeVote() {
    dependency.decrementVote();

    if(value - 1 < 0) {
      value = 0;
    }
    else {
      value = value - 1;
    }
  }
}