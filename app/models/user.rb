'require bcrypt'

class User < ActiveRecord::Base
	has_secure_password
	has_many :swits, dependent: :destroy

	validates :username, presence: true,
						 uniqueness: true,
						 length: { in: 4..20 }

	validates :password, presence: true,
						 length: { in: 4..20 }
end
