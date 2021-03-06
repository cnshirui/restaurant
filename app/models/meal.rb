require 'acts_as_list'

class Meal < ActiveRecord::Base
  attr_accessor :position
  acts_as_list
  has_many :orders, :dependent => :destroy
  has_and_belongs_to_many :dishes, join_table: :orders
  
  default_scope { order 'position' }
  
  TYPES = ['breakfast', "lunch", "dinner"]
  
end

