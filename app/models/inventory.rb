# frozen_string_literal: true
class Inventory < ApplicationRecord
  validates :price, :section, presence: true
end
