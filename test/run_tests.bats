#!/usr/bin/env bats

load test_helper

@test "Simple 4 col 1 row .csv conversion" {
    FILE=simple
    ../tables ./original/$FILE.csv > ./change/$FILE.tex
    result=$(diff ./solution/$FILE.tex ./change/$FILE.tex)
    [ -z $result ]
}
