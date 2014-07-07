require 'acts_as_list'

class Meal < ActiveRecord::Base
  acts_as_list
  
  MEAL_TYPES = ['breakfast', "lunch", "dinner"]
  
  def name
    date.to_s + " - " + meal_type
  end
  
  # TODO: overwride
#  def self.all
#    self.order :position
#  end
end

