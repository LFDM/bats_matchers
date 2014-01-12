load_plugin bats_matchers

setup() {
  matcher_test_var='matcher_test_value'
}

@test 'provides has_var' {
  has_var matcher_test_var matcher_test_value
}

@test 'provides has_not_var' {
  has_not_var matcher_test_vat other_matcher_value
}

