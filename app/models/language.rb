class Language < ActiveRecord::Base
  has_many :resources
  has_many :categories, :through => :resources
  before_save { |language| language.name = language.name.downcase }
end
