import 'package:hw_7/voting_dependency.dart';

class MemoryVotingDependency implements VotingDependency {
  // Implementing VotingDependency
  var _value = 10;

  @override
  int get count => _value;

  @override
  void incrementVote() => _value++;

  @override
  void decrementVote() => _value--;
}
