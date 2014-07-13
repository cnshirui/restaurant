class Dish < ActiveRecord::Base

  default_scope { order 'name' }
  
  belongs_to :book
  
  has_many :burdens, :dependent => :destroy
  has_many :orders, :dependent => :destroy
  
  accepts_nested_attributes_for :burdens

end
