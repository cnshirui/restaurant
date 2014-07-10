require 'acts_as_list'

class Meal < ActiveRecord::Base
  acts_as_list
  has_many :orders, :dependent => :destroy
  
  default_scope { order 'position' }
  
  MEAL_TYPES = ['breakfast', "lunch", "dinner"]
  
end

