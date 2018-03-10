class User < ApplicationRecord

	has_secure_password
	has_many :players
	has_many :games, :through => :players

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :password, presence: true


end
