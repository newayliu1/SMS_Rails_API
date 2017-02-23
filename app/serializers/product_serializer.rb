# frozen_string_literal: true
class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :users, :inventories, :orders

  def inventories
    object.inventories.where(user: current_user)
  end
end
