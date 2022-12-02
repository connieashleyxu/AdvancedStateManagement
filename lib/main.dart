import 'package:hw_7/voting_value_notifier.dart';
import 'package:hw_7/memory_voting_dependency.dart';

void main() {
  VotingValueNotifier votingValueNotifier = VotingValueNotifier(dependency: MemoryVotingDependency());

  // Code execution
  print(votingValueNotifier.value); // 10
  votingValueNotifier.castVote();
  print(votingValueNotifier.value); // 11
  votingValueNotifier.removeVote();
  print(votingValueNotifier.value); // 10

  // Remove 20 votes
  for (var i = 0; i < 20; i++) {
    votingValueNotifier.removeVote();
  }

  print(votingValueNotifier.value); // 0
}
