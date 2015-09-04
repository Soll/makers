class User < ActiveRecord::Base
	authenticates_with_sorcery!

	has_many :videos

	validates :email, uniqueness: true
end
