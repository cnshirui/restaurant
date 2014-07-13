class ShoppingMeal < ActiveRecord::Base
  belongs_to :shopping
  belongs_to :meal
end
