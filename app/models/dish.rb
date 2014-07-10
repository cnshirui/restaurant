class Dish < ActiveRecord::Base
  belongs_to :book
  has_and_belongs_to_many :dishes
  
  default_scope { order 'name' }
end
