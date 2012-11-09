require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddAddress < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    change_table :students do |s|
      s.string :address
    end
  end
end