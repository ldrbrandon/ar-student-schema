require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :rosters, :foreign_key => :teacher_id
  has_many :students, :through => :rosters

  validates :email, format: { with: /.+@\w{1,}.\w{2,}/,
    message: "Must have at least 2 characters before between and after the @ sign and ." }
  validates :email, uniqueness: true
  validate :phone_num_must_be_atleast_ten_digits

  def phone_num_must_be_atleast_ten_digits
    if self.phone.gsub(/\D/,"").length < 10
      errors.add(:phone, "Phone number can't be less than 10 digits")
    end
  end

end

# at least 10 digits


