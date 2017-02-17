# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :inventories

  def inventories
    object.inventories.pluck(:id)
  end
end
