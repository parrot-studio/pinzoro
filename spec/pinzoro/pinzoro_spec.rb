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
    
  end
  
end
