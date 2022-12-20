require 'rails_helper'

RSpec.describe 'code challenges index' do 
  it 'lists all the code challenges' do 
    code_1 = Code.create(title: 'String Splitter', rating: 5, problem_description: 'The method should return an array of these string pairs such as: abc => ["ab", "c_"]')
    code_2 = Code.create(title: 'Some other challenge', rating: 10, problem_description: 'This should also appear')

    visit "/codes"
    
    expect(page).to have_link(code_1.title)
    expect(page).to have_link(code_2.title)
  end
end