
 require_relative '../../config/application'

class CreateTable <ActiveRecord::Migration

  def change
  	create_table :task do |t|
  		t.string :taskname
  		t.string :status
  end
end