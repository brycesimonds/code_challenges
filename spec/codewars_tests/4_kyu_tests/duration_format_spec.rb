require 'rails_helper'
require './codewars/4_kyu/duration_format.rb'

RSpec.describe 'the challenge' do 
  it 'solves the problem' do 
    seconds1 = 1
    seconds2 = 62
    seconds3 = 120
    seconds4 = 3600
    seconds5 = 3662
    
    expect(format_duration(seconds1)).to eq("1 second")
    expect(format_duration(seconds2)).to eq("1 minute and 2 seconds")
    expect(format_duration(seconds3)).to eq("2 minutes")
    expect(format_duration(seconds4)).to eq("1 hour")
    expect(format_duration(seconds5)).to eq("1 hour, 1 minute and 2 seconds")
  end
end