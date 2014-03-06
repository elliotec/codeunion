class Category < ActiveRecord::Base
  has_many :resources
  has_many :languages, :through => :resources
  before_save { |category| category.name = category.name.downcase }
end
