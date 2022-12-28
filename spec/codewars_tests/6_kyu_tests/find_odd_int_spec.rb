require 'rails_helper'
require './codewars/6_kyu/find_odd_int.rb'

RSpec.describe 'the find_it function' do 
  it 'finds int that occurs an odd amount of times in given array' do 
    array1 = [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]
    array2 = [1,1,2,-2,5,2,4,4,-1,-2,5]
    array3 = [20,1,1,2,2,3,3,5,5,4,20,4,5]
    array4 = [10]
    array5 = [1,1,1,1,1,1,10,1,1,1,1]

    expect(find_it(array1)).to eq(5)
    expect(find_it(array2)).to eq(-1)
    expect(find_it(array3)).to eq(5)
    expect(find_it(array4)).to eq(10)
    expect(find_it(array5)).to eq(10)
  end
end