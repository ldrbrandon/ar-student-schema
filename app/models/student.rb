require_relative '../../db/config'

class Student < ActiveRecord::Base
  
  attr_reader :first_name, :last_name, :age

  def initialize(args = {})
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @age = args[:age]
  end

  def name
    first_name + " " + last_name
  end
end

