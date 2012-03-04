class Song < ActiveRecord::Base
	has_many :arrangements
end
