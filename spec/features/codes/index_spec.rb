require 'rails_helper'

RSpec.describe 'code challenges index' do 
  it 'lists all the code challenges' do 
    code_1 = Code.create(title: 'String Splitter', rating: 5, problem_description: 'The method should return an array of these string pairs such as: abc => ["ab", "c_"]')
    code_2 = Code.create(title: 'NOT Splitter', rating: 10, problem_description: 'This should not appear')

    visit "/codes"

    expect(page).to have_content(code_1.title)
    expect(page).to have_content(code_1.rating)
    expect(page).to have_content(code_1.problem_description)
    expect(page).to_not have_content(code_2.title)
    expect(page).to_not have_content(code_2.rating)
    expect(page).to_not have_content(code_2.problem_description)
  end
end