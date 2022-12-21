require 'rails_helper'

RSpec.describe Code, type: :model do
  describe 'validations' do 
    it { should validate_numericality_of(:rating) }
    it { should validate_presence_of(:problem_description) }
    it { should validate_presence_of(:title) }
  end
end
