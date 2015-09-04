class User < ActiveRecord::Base
	authenticates_with_sorcery!

	has_many :videos
	has_many :rates

	validates :email, uniqueness: true
end
