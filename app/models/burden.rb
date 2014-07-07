class Burden < ActiveRecord::Base
  belongs_to :material
  belongs_to :dish
end
