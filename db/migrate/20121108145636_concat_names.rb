require_relative '../config'

# this is where you should use an ActiveRecord migration to

class ConcatNames < ActiveRecord::Migration
  def up
    # HINT: checkout ActiveRecord::Migration.create_table
    add_column :students, :name, :string
    Student.all.each do |s|
      s.name = s.first_name + ' ' + s.last_name
      s.save!
    end
    remove_column(:students, :first_name)
    remove_column(:students, :last_name)
  end

  def down
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    Student.all.each do |s|
      s.first_name = s.name.split(' ').first
      s.last_name = s.name.split(' ').last
    end
    remove_column(:students, :name)
  end

end