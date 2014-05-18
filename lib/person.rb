#!/usr/bin/env ruby
class Person < Object
  

  attr_accessor :job
  attr_accessor :address
  attr_accessor :name # I can change the name value later because I set an accessor here
  attr_writer :writable_not_readable
  attr_reader :readable_not_writable
  attr_writer :capitalizable
 

  def initialize(name,gender)
    @name = name
    @gender = gender.nil? ? "male" : gender #default value is male if not set
    # I CAN'T change the gender value later because I DIDN'T set an accessor BEFORE
    @readable_not_writable = "can be read but can't be modified outside the class"
    @writable_not_readable = "can be writen but can not be read outside the class"
    @capitalizable = "i have this initial value, but i can be changed anytime, but
                  whatever string is put here will be turned into capital letter by my 
                  setter"
  end
  
  def capitalizable
    return @capitalizable.capitalize
  end
  
end