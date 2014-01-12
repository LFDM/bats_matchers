function context {
  # tbd
  return
}

function returns {
  [ $status -eq $1 ]
}

function returns_true {
  returns 0
}

function returns_false {
  [ ! $status -eq 0 ]
}

function has_var {
  [ $(eval "echo \$$1") = $2 ]
}

function has_not_var {
  ! has_var $@
}

function has_alias {
  # looks weird as we could just grep the output of alias, but sadly newlines
  # get eaten up when it's used inside of a script # and their won't be a way
  # to determine that $2 is indeed the complete alias
  echo $(alias $1) | grep -P "$1=['\"]?$2['\"]?$"
}

function has_not_alias {
  ! has_alias $@
}

function matches_output {
  echo $output | grep -P $@
}

