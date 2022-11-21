# frozen_string_literal: true

class User < ApplicationRecord
  has_many :categories
  has_many :transactions

  validates :name, presence: true
end
