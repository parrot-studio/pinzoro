# coding: utf-8
require "pinzoro/version"

module Pinzoro

  module_function

  def roll(dice, times = 1)
    return unless (dice && times)
    return if dice <= 0 || times <= 0
    (1..times).map{ rand(dice) + 1 }
  end

end
