# frozen_string_literal: true
# typed: true
# compiled: true
uniq_data = (1..10_000).to_a
N = 100
enum = uniq_data.lazy.uniq {|i| i % 5000}.uniq {|i| i % 5000}
N.times {enum.each {}}
