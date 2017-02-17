# frozen_string_literal: true
class Product < ApplicationRecord
  has_many :inventories
  validates :name, presence: true
end
