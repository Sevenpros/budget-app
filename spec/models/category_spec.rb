# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'should have valid attributes' do
    user = User.create(name: 'name')
    category = Category.create(name: 'Food', icon: 'category icon', user:)

    it 'should be saved with valid attributes' do
      expect(category).to be_valid
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
