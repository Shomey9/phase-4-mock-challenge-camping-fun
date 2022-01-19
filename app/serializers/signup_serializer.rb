class SignupSerializer < ActiveModel::Serializer
  # attributes :activity
  attributes :id, :time
  # has_one :camper
  # has_one :activi ty
  def activity
    object.activity
  end
end
