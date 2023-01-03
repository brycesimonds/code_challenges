require 'rails_helper'
require './codewars/5_kyu/pick_peaks.rb'

RSpec.describe 'the pick_peaks method' do 
  it 'returns the positions and the values of the "peaks" (or local maxima) of a numeric array' do 
    array1 = [1,2,3,6,4,1,2,3,2,1]
    array2 = [3,2,3,6,4,1,2,3,2,1,2,3]
    array3 = [3,2,3,6,4,1,2,3,2,1,2,2,2,1]
    array4 = [2,1,3,1,2,2,2,2,1]
    array5 = [2,1,3,1,2,2,2,2]
    expect(valid_parentheses(array1)).to eq({"pos"=>[3,7], "peaks"=>[6,3]}) #should support finding peaks
    expect(valid_parentheses(array2)).to eq({"pos"=>[3,7], "peaks"=>[6,3]}) #should support finding peaks, but should ignore peaks on the edge of the array
    expect(valid_parentheses(array3)).to eq({"pos"=>[3,7,10], "peaks"=>[6,3,2]}) #should support finding peaks; if the peak is a plateau, it should only return the position of the first element of the plateau
    expect(valid_parentheses(array4)).to eq({"pos"=>[2,4], "peaks"=>[3,2]}) #should support finding peaks; if the peak is a plateau, it should only return the position of the first element of the plateau
    expect(valid_parentheses(array5)).to eq({"pos"=>[2], "peaks"=>[3]}) #should support finding peaks, but should ignore peaks on the edge of the array
  end
end