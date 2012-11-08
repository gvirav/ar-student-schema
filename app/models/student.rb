require_relative '../../db/config'
#include datetime

class Student < ActiveRecord::Base
  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    ((Date.today - self.birthday)/365.25).to_i
  end
end

# implement your Student model here
