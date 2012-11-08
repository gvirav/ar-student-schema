require_relative '../config'

# this is where you should use an ActiveRecord migration to

class ChangeStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    change_table :students do |s|
      s.timestamps
    end
  end
end
