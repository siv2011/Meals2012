class Meal < ActiveRecord::Base
  attr_accessible :date, :link, :name, :notes, :restaurant
end
