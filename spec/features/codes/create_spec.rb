require 'rails_helper'

RSpec.describe 'code challenges creation' do 
  describe 'the code challenge new form' do
    it 'renders the new form' do
      visit new_code_path

      expect(page).to have_content('New Code Challenge')
      expect(find('form')).to have_content('Title')
      expect(find('form')).to have_content('Difficulty')
      expect(find('form')).to have_content('Problem Description')
    end
  end
end