class Dish < ActiveRecord::Base
  belongs_to :book
  
  has_many :burdens, :dependent => :destroy
  has_many :orders, :dependent => :destroy
  
  accepts_nested_attributes_for :burdens
  
  default_scope { order 'name' }
end
