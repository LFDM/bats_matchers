load_plugin bats_matchers

outputting_function() {
  echo "A text too match"
}

@test 'matches_output checks stdout against a regex' {
  run outputting_function
  matches_output 'text'
}

@test 'is case sensitive by default' {
  run outputting_function
  ! matches_output 'TEXT'
}

@test 'uses grep and takes its parameters' {
  run outputting_function
  matches_output -i 'TExT'
}

@test 'defaults the use of perl regexps (-P)' {
  run outputting_function
  matches_output '(?<=text )too'
  ! matches_output 'too(?=text)'
}
