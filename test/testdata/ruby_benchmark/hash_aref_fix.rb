# frozen_string_literal: true
# typed: strict
# compiled: true
h = {}
nums = (1..26).to_a
nums.each { |i| h[i] = i }
200_000.times { nums.each { |s| h[s] } }
