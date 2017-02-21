# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :inventories, :orders, :products

  # def inventories
  #   object.inventories.pluck(:id)
  # end
end
