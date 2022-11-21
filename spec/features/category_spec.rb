require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Name', email: 'a@mail.com', password: 'password') }
  let(:category) { user.categories.create(name: 'CATEGORY', icon: 'cat_icon') }

  describe 'index page' do
    before(:each) do
      sign_in user
      visit '/categories'
    end

    it 'I can see the category name ' do
      expect(page).to have_content 'Category'
    end
    it 'I can see the category icon' do
      expect(page).to have_content 'icon'
    end
  end
end
