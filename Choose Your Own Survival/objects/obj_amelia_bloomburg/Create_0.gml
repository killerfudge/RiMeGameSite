// The movement speed of the
// character along their path.
move_speed = 1;

// Starts following the path
// stored in the path_to_follow
// variable. This is created in
// the "Variable Definitions" 
// menu.
// path_action is a variable that
// controls what the baddie does 
// once it reaches the end of that
// path, continue means it continues
// following it and doesn't stop, while
// reverse has it turn around and follow
// the path in reverse
path_start(amelias_path, move_speed, path_action_continue, true);