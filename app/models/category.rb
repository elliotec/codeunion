class Category < ActiveRecord::Base
  has_many :resources
  has_many :languages, :through => :resources
end
