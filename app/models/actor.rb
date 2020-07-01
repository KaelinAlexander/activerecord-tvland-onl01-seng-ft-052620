class Actor < ActiveRecord::Base
  has_many :chracters
  has_many :shows, through: :characters
end
