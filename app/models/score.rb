class Score < ActiveRecord::Base
	belongs_to :user
	has_one :arrangement
end
