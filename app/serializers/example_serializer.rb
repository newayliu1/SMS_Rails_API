# frozen_string_literal: true
class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable

  def editable
    # scope is a build in method implied the current user
    # object is the source of the data of the Serializer, the object.user is the user to created the model.
    scope == object.user
  end
end
