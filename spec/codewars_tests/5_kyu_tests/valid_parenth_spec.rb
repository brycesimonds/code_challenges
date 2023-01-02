require 'rails_helper'
require './codewars/5_kyu/valid_parenth.rb'

RSpec.describe 'the validates_parentheses' do 
  it 'should validate correctly' do 
    string1 = "  ("
    string2 = ")test"
    string3 = ""
    string4 = "hi())("
    string5 = "hi(hi)()"
    expect(valid_parentheses(string1)).to eq(false)
    expect(valid_parentheses(string2)).to eq(false)
    expect(valid_parentheses(string3)).to eq(true)
    expect(valid_parentheses(string4)).to eq(false)
    expect(valid_parentheses(string5)).to eq(true)
  end
end