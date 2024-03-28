import std/strutils
# import std/sequtils
# import std/setutils
# import std/algorithm
# import std/sets
# import std/tables
# import std/deques
# import std/strscans
# import std/os
import ../../denise

let input = readFile("input.txt")
let test1 = ""

proc p1(input: string): int =
  let a = input.strip.split('\n')
  a.len

bench:
  p1(input)

block:
  # assert p1(test1) == 0
  discard
