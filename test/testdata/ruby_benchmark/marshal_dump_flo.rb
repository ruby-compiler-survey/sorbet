# frozen_string_literal: true
# typed: strong
# compiled: true
bug10761 = 10000.times.map { |x| x.to_f }
100.times { Marshal.dump(bug10761) }
