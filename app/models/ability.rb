class Ability < ActiveRecord::Base
  has_one :saving_throw
  accepts_nested_attributes_for :saving_throw
end
