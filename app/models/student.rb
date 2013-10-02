require_relative '../../db/config'

class Student < ActiveRecord::Base

  def name
    self.first_name + " " + self.last_name
  end

  def age
    (Date.today - self.birthday).to_i / 365
  end

end
