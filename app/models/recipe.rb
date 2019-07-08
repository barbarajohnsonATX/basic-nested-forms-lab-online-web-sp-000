class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_news
end
