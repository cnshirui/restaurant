class Shopping < ActiveRecord::Base
  
  default_scope { order 'date DESC' }
  
  has_many :shopping_meals, :dependent => :destroy
  accepts_nested_attributes_for :shopping_meals
end
