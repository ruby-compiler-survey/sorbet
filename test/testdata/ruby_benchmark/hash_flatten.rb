# frozen_string_literal: true
# typed: true
# compiled: true
h = {}

10000.times do |i|
  h[i] = nil
end

1000.times do
  h.flatten
end
