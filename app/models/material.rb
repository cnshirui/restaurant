class Material < ActiveRecord::Base
  
  has_and_belongs_to_many :meal, join_table: :burdens
  
end
