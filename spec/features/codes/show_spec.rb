require 'rails_helper'

RSpec.describe 'code challenge show page' do 
  it 'shows the codes title, rating and description' do 
    code_1 = Code.create(title: 'String Splitter', rating: 5, problem_description: 'The method should return an array of these string pairs such as: abc => ["ab", "c_"]')

    visit code_path(code_1)

    expect(page).to have_content(code_1.title)
    expect(page).to have_content(code_1.rating)
    expect(page).to have_content(code_1.problem_description)
  end
end