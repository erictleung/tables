#!/usr/bin/env bats

load test_helper

@test "Simple 4 col 1 row .csv conversion" {
    FILE=simple
    ./tables ./test/original/$FILE.csv > ./test/change/$FILE.tex
    result=$(diff ./test/solution/$FILE.tex ./test/change/$FILE.tex)
    [ -z $result ]
}
