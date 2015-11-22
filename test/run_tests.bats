#!/usr/bin/env bats

@test "Simple Addition" {
  result=$((2+2))
  [ "$result" -eq 4 ]
}
