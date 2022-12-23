require 'rails_helper'
require './codewars/5_kyu/greed_good.rb'

RSpec.describe 'the score function' do 
  it 'should value this as worthless' do 
    dice = [2, 3, 4, 6, 2]
    expect(score(dice)).to eq("Should be 0")
  end

  it 'should value this triplet correctly' do 
    dice = [2, 2, 2, 3, 3] 
    expect(score(dice)).to eq("Should be 200")
  end

  it 'should value this mixed set correctly' do 
    dice = [2, 4, 4, 5, 4]
    expect(score(dice)).to eq("Should be 450")
  end
end