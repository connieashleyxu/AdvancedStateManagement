import 'package:flutter_test/flutter_test.dart';
import 'package:hw_7/memory_voting_dependency.dart';

void main() {
  // Tests
  test('Initial vote count comes from dependency', () {
    final notifier = MemoryVotingDependency();

    expect(notifier.count, 10);
  });

  test('Removing vote decreases value', () {
    final notifier = MemoryVotingDependency();

    notifier.decrementVote();
    expect(notifier.count, 9);
  });

  test('Casting vote increments value', () {
    final notifier = MemoryVotingDependency();

    notifier.incrementVote();
    expect(notifier.count, 11);
  });
}