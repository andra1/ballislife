class Game < ApplicationRecord
	

	has_many :players
	has_many :users, :through => :players

	belongs_to :venue

	
	validates :name, presence: true
	validates :start_time, presence: true

end
