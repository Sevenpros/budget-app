# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'should be valid with valid attributes' do
    user = User.create(name: 'name')
    category = Category.create(name: 'Food', icon: 'category icon', user:)
    transaction = Transaction.create(name: 'food money', amouunt: 100, user:, category:)

    it 'should save the valid object' do
      expect(transaction).to be_valid
    end

    it 'should not save transaction without valid name' do
      transaction.name = nil
      expect(transaction).to_not be_valid
    end

    it 'should not save transaction without valid amount' do
      transaction.amouunt = nil
      expect(transaction).to_not be_valid
    end
  end
end
