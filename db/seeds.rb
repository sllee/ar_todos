require 'faker'
require_relative '../app/models/task'


5.times do 
	Task.create(taskname: Faker::Lorem.sentence, status: "No")
end

