load_plugin bats_matchers

setup() {
  alias test_alias1=test_command
  alias test_alias2='test_command'
  alias test_alias3="test_command"
}

@test 'provides has_alias' {
  has_alias test_alias1 test_command
}

@test 'provides has_not_alias' {
  has_not_alias test_alias1 other_command
}

