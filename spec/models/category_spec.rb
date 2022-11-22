require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'should have valid attributes' do
    let(:user) { User.create(name: 'Name', email: 'a@mail.com', password: 'password') }
    let(:category) { user.categories.create(name: 'CATEGORY', icon: 'cat_icon') }

    # it 'should be saved with valid attributes' do
    #   expect(category).to be_valid
    # end
    it 'should be saved with valid user' do
      expect(user).to be_valid
    end

    it 'should not save category without valid name' do
      category.name = nil
      expect(category).to_not be_valid
    end
    it 'should not save category without valid icon' do
      category.icon = nil
      expect(category).to_not be_valid
    end
  end
end
