# frozen_string_literal: true
# typed: true
# compiled: true
i = 0
while i<200_000
  i += 1

  Class.new{
    def m; end
  }
end
