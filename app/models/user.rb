class User < ActiveRecord::Base
	authenticates_with_sorcery!

	has_many :videos
	has_many :rates
	has_many :comments

	validates :email, uniqueness: true
end
