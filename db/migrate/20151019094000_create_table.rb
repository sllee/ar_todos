
 require_relative '../../config/application'

class CreateTable <ActiveRecord::Migration

  def change
  	create_table :tasks do |t|
  		t.string :taskname
  		t.string :status
  		t.belongs_to :deadline
  	end
  end
end