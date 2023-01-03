require 'rails_helper'
require './codewars/5_kyu/pick_peaks.rb'

RSpec.describe 'the pick_peaks method' do 
  it 'should support finding peaks' do 
    array1 = [1,2,3,6,4,1,2,3,2,1]
    expect(pick_peaks(array1)).to eq({"pos"=>[3,7], "peaks"=>[6,3]})
  end

  it 'should support finding peaks, but should ignore peaks on the edge of the array' do 
    array2 = [3,2,3,6,4,1,2,3,2,1,2,3]
    expect(pick_peaks(array2)).to eq({"pos"=>[3,7], "peaks"=>[6,3]})
  end

  it 'should support finding peaks; if the peak is a plateau, it should only return the position of the first element of the plateau' do 
    array3 = [3,2,3,6,4,1,2,3,2,1,2,2,2,1]
    expect(pick_peaks(array3)).to eq({"pos"=>[3,7,10], "peaks"=>[6,3,2]})
  end

  it 'should support finding peaks; if the peak is a plateau, it should only return the position of the first element of the plateau: part 2' do 
    array4 = [2,1,3,1,2,2,2,2,1]
    expect(pick_peaks(array4)).to eq({"pos"=>[2,4], "peaks"=>[3,2]})
  end

  it 'should support finding peaks, but should ignore peaks on the edge of the array' do 
    array5 = [2,1,3,1,2,2,2,2]
    expect(pick_peaks(array5)).to eq({"pos"=>[2], "peaks"=>[3]})
  end
end