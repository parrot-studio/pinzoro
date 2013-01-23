# coding: utf-8
require "pinzoro/version"
require "pinzoro/roll"

class Integer

  def diceroll(dice)
    Pinzoro.roll(dice, self)
  end

  # override
  def method_missing(name, *args)
    super if self <= 0
    m = name.to_s.match(/\A[d|D](\d+)(!)?\z/)
    super unless m
    ret = self.diceroll(m[1].to_i)
    super unless ret
    m[2] ? ret.inject(&:+) : ret
  end

end
