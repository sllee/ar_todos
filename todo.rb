require_relative 'config/application'
require_relative 'app/models/task'
require_relative 'app/controllers/taskcontrol'

# p Task.all


input_arr = ARGV
action = input_arr[0] # delete no; #complete no; #add xxxxxx
item = input_arr[1..-1].join(" ")


case action
	when "list"
    TaskControl.list
  when "delete"
    # no = item.to_i
    # no -=1
    # list.delete(no)
    TaskControl.deleteitem(item)
  when "add"
    TaskControl.addnew(item)
  when "complete"
    # no = item.to_i
    # no -=1
    # list.complete(no)
    TaskControl.setcomplete(item)
    when "uncomplete"
    TaskControl.uncomplete(item)
end


# puts "Put your application code in #{File.expand_path(__FILE__)}"
