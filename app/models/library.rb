# frozen_string_literal: true

class Library < ApplicationRecord
  has_many :authors, dependent: :destroy
  # check validation for "name" field, true means validation will be called automatically
  validates :name, length: { minimum: 5 }
end
