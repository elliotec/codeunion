class Comment < ActiveRecord::Base
  belongs_to :resource
  belongs_to :user

  validates :content, presence: true
end
