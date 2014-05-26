class Resource < ActiveRecord::Base
  acts_as_votable
  belongs_to :category
  belongs_to :language
  has_many :comments

  searchable do
    text :name, :body
  end
end
