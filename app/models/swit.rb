class Swit < ActiveRecord::Base
	belongs_to :user
  has_many :comments
  has_many :swit_sours
end