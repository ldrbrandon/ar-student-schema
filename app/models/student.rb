require_relative '../../db/config'

class Student < ActiveRecord::Base
  has_many :roster, :foreign_key => :student_id
  has_many :teachers, :through => :rosters

  validates :age, numericality: { only_integer: true,
    greater_than_or_equal_to: 5}
  validates :email, format: { with: /.+@\w{1,}.\w{2,}/,
    message: "Must have at least 2 characters before between and after the @ sign and ." }
  validates :email, uniqueness: true
  validate :phone_num_must_be_atleast_ten_digits

  def name
    first_name + " " + last_name
  end

  def age
    Date.today.year - birthday.year
  end

  def phone_num_must_be_atleast_ten_digits
    if self.phone.gsub(/\D/,"").length < 10
      errors.add(:phone, "Phone number can't be less than 10 digits")
    end
  end


end

# at least 10 digits
