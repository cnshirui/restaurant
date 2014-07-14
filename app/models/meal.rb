require 'acts_as_list'

class Meal < ActiveRecord::Base
  acts_as_list
  has_many :orders, :dependent => :destroy
  
  has_many :burdens
  has_and_belongs_to_many :material, join_table: :burdens
  
  default_scope { order 'position' }
  
  MEAL_TYPES = ['breakfast', "lunch", "dinner"]
  
end

