class Comment < ActiveRecord::Base
  belongs_to :swit
  belongs_to :user

  validates_presence_of :content
end
