# coding: utf-8
require 'spec_helper'

describe Pinzoro do

  describe '#roll' do

    context 'dice roll' do
      let(:dice_size){ 6 }
      subject{ Pinzoro.roll(dice_size, 2) }
      it { subject.size.should == 2 }
      it { subject.all?{|v| v >= 1 && v <= dice_size }.should be_true  }
    end

    context 'roll times default is 1' do
      let(:dice_size){ 8 }
      subject{ Pinzoro.roll(dice_size) }
      it { subject.size.should == 1 }
      it { subject.all?{|v| v >= 1 && v <= dice_size }.should be_true  }
    end

    context 'return nil if dice_size is nil' do
      it { Pinzoro.roll(nil, 2).should be_nil }
    end

  end

  describe 'add method for Integer class' do

    context 'roll 2d6' do
      subject { 2.d6 }
      it { subject.size.should == 2 }
      it { subject.all?{|v| v >= 1 && v <= 6 }.should be_true  }
    end

    context 'roll 3D10' do
      subject { 3.D10 }
      it { subject.size.should == 3 }
      it { subject.all?{|v| v >= 1 && v <= 10 }.should be_true  }
    end

    context '2.d6! is sum result' do
      subject { 2.d6! }
      it { subject.should be_kind_of(Integer) }
      it { subject.should >= (1 * 2) }
      it { subject.should <= (6 * 2) }
    end

    context '3.D8! is sum result' do
      subject { 3.D8! }
      it { subject.should be_kind_of(Integer) }
      it { subject.should >= (1 * 3) }
      it { subject.should <= (8 * 3) }
    end

    context 'call original method missing if self <= 0' do
      it { lambda{-1.d6}.should raise_error }
    end

  end

end
