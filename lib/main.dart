void main() async {
  print("Start");
  // This async function will pause internally
  delayedTask();
  // This runs immediately (not blocked)
  print("This runs immediately after calling delayedTask");

  // Another async task
  Future(() {
    print("Event queue task executed");
  });
  print("End");
}

Future<void> delayedTask() async {
  print("Delayed task started");

  await Future.delayed(Duration(seconds: 6));

  print("Delayed task completed after 6 seconds");
}
