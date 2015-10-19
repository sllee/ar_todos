
require_relative '../../config/application'

class CreateNewTable <ActiveRecord::Migration

  def change
  	create_table :deadlines do |t|
  		t.string :date
  	end
  end
end