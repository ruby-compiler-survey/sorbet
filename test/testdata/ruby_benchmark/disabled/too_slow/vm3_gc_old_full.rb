# frozen_string_literal: true
# typed: strong
# compiled: true
old_object = Array.new(1_000_000){''}
100.times do
  GC.start
end
