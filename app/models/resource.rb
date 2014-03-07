class Resource < ActiveRecord::Base
  acts_as_votable
  acts_as_taggable
  belongs_to :category
  belongs_to :language
end
