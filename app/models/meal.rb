require 'acts_as_list'

class Meal < ActiveRecord::Base
  acts_as_list
  has_many :orders
  has_and_belongs_to_many :dishes, join_table: :orders
  
  default_scope { order 'position' }
  
  MEAL_TYPES = ['breakfast', "lunch", "dinner"]
  
end

