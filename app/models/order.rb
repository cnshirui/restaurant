class Order < ActiveRecord::Base
  belongs_to :dish
  belongs_to :meal
  
  default_scope { order 'meal_id' }
  
end
