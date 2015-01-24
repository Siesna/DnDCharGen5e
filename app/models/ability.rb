class Ability < ActiveRecord::Base
  has_one :saving_throw
  has_one :ability_modifier
  accepts_nested_attributes_for :saving_throw
  accepts_nested_attributes_for :ability_modifier
end
