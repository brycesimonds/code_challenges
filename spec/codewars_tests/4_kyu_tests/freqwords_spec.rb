require 'rails_helper'
require './codewars/4_kyu/freqwords.rb'

RSpec.describe 'the challenge' do 
  it 'solves the problem' do 
    # string1 = "a a a  b  c c  d d d d  e e e e e"
    string2 = "e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e"
    string3 = "  //wont won't won't "
    string4 = "  , e   .. "
    string5 = "In a village of La Mancha, the name of which I have no desire to call to
    mind, there lived not long since one of those gentlemen that keep a lance
    in the lance-rack, an old buckler, a lean hack, and a greyhound for
    coursing. An olla of rather more beef than mutton, a salad on most
    nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
    on Sundays, made away with three-quarters of his income."
    
    # expect(top_3_words(string1)).to eq(["e", "d", "a"])
    expect(top_3_words(string2)).to eq(["e", "ddd", "aa"])
    expect(top_3_words(string3)).to eq(["won't", "wont"])
    expect(top_3_words(string4)).to eq(["e"])
    expect(top_3_words(string5)).to eq(["a", "of", "on"])
  end
end