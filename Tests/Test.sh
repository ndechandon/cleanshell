#! /bin/sh
# file: examples/equality_test.sh
source code.sh

test_string() {
  assertEquals "hello" "$(hello)"
}

test_math() {
  assertEquals "7" "$(sum 3 4)"
}

test_code_return() {
    //tod
    return_code
    assertEquals "hello" "$(return_code)"
}

test_export_variable() {
    eval $(return_code)
    assertEquals "$FOO" "BLEU"
}

test_create_directoy() {
    //Todo
    readonly resutl="$(create_directory)"
     assertTrue 'directory missing' "[ -d '${resutl}' ]"
}

# Load and run shUnit2.

source shunit2/shunit2