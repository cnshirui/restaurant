class Order < ActiveRecord::Base
  belongs_to :dish
  belongs_to :meal
end
