class Dish < ActiveRecord::Base
  belongs_to :book
  
  has_many :burdens, :dependent => :destroy
  accepts_nested_attributes_for :burdens
  has_and_belongs_to_many :materials, join_table: :burdens 
  
  has_many :orders, :dependent => :destroy
  has_and_belongs_to_many :meals, join_table: :orders 
  
  default_scope { order 'name' }
end
