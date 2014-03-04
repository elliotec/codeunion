class Language < ActiveRecord::Base
  has_many :resources
  has_many :categories, :through => :resources
end
