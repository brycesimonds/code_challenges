require 'rails_helper'

RSpec.describe 'code challenges creation' do 
  describe 'the code challenge new form' do
    it 'renders the new form' do
      visit new_code_path
      
      expect(page).to have_content('New Code Challenge')
      expect(find('form')).to have_content('Title')
      expect(find('form')).to have_content('Rating')
      expect(find('form')).to have_content('Problem description')
    end
  end
  describe 'the code challenge create' do 
    context 'if given valid data' do 
      it 'creates the code challenge and redirects to the code index page' do 
        visit new_code_path
       
        fill_in 'Title', with: 'Challenge 1'
        fill_in 'Rating', with: 3
        fill_in 'Problem description', with: 'Testing123'

        click_button 'Create Code'
        expect(page).to have_current_path codes_path
        expect(page).to have_link('Challenge 1')
      end
    end
  end
end