load_plugin bats_matchers

function_with_true_stat() {
  return 0
}

function_with_false_stat() {
  return 1
}

function_with_command_not_found_stat() {
  return 127
}

@test 'provides returns' {
  run function_with_true_stat
  returns 0
}

@test 'checks the return value of a run command' {
  run function_with_command_not_found_stat
  returns 127
}

@test 'provides helper returns_true' {
  run function_with_true_stat
  returns_true
}

@test 'fails if wrong return status is given' {
  run function_with_command_not_found_stat
  ! returns 1
}

@test 'provides helper returns_false' {
  run function_with_false_stat
  returns_false
  run function_with_command_not_found_stat
  returns_false
}
