function wait(time) {
  // Create a timer object
  var timer = timer();

  // Set the timer's duration
  set_(timer, time);

  // Start the timer
  timer_start(timer);

  // Wait until the timer expires
  while (timer_is_alive(timer)) {
    // Do nothing
  }

  // Destroy the timer object
  timer_destroy(timer);
}  