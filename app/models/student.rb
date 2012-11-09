require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :presence => true, :format => { :with => /.+@.+\...+/ }, :uniqueness => :true
  validates :age, :presence => true, :numericality => { :greater_than => 5 }
  validates :phone, :format => { :with => /\(?\d{3}\)?.?\d{3}-\d{4}\s?(.+)?/ }


  # def name
  #   "#{self.first_name} #{self.last_name}"
  # end

  def age
    ((Date.today - self.birthday)/365.25).to_i
  end

end

# implement your Student model here
