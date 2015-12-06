class Comment < ActiveRecord::Base
	belongs_to :litter
	belongs_to :user
end
