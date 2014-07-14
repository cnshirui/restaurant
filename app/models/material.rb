class Material < ActiveRecord::Base
  
  default_scope { order 'category' }
  
  CATEGORIES = ['vegetable', 'meat', 'flavour']
  
end
