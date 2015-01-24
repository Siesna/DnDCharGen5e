class Character < ActiveRecord::Base
  belongs_to :user
  has_one :ability
  accepts_nested_attributes_for :ability
end
