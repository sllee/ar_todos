require_relative '../models/task'
require 'byebug'

class TaskControl

	@id_array = []

	def self.list
		num = Task.all.count

		Task.all.each_with_index do |x, idx|
		if x.status == "No"
				puts "#{idx+1}. [ ]#{x.taskname} "
			else
				puts "#{idx+1}. [X]#{x.taskname} "
			end
		end
		puts " "
		# byebug
		# puts @id_array
	end

	def self.addnew(newtask)
		Task.create(taskname: newtask,  status:"No")
		puts "Appended '#{newtask}' in your TODO list."
		puts " "
	end

	def self.setcomplete(id)
		a = Task.all
		byebug
		a[id.to_i-1].status = "Yes"
		a[id.to_i-1].save

	end

	def self.deleteitem(id)
		a = Task.all
		puts "Deleted '#{a[id.to_i-1].taskname}'' from your TODO list"
		 a.delete(a[id.to_i-1])

		puts " "
	end


end