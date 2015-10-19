class Deadline < ActiveRecord::Base
	has_many :tasks
end