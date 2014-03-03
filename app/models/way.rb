class Way < ActiveRecord::Base
  belongs_to :language
  validates_inclusion_of :category, :in => ['book','video','mooc', 'tutorial', 'bootcamp', 'blog post', 'game', 'university']
end
