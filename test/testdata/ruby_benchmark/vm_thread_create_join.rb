# frozen_string_literal: true
# typed: strong
# compiled: true
i = 0
while i<100_000 # benchmark loop 3
  i += 1
  Thread.new{
  }.join
end
