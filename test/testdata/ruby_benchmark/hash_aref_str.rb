# frozen_string_literal: true
# typed: strict
# compiled: true
h = {}
strs = ('a'..'z').to_a.map!(&:freeze)
strs.each { |s| h[s] = s }
200_000.times { strs.each { |s| h[s] } }
