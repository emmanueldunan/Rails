class SwitSour < ActiveRecord::Base
	enum rating: [ :sweet, :sour ]
  has_and_belongs_to_many :swit
  has_and_belongs_to_many :users
end
