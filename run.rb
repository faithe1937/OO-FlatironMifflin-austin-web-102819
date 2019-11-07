require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

steve = Manager.new('steve', 'women', 30)
joe = Manager.new('joe', 'mens',22)
amy = Employee.new('amy', '30', 'steve')
liz = Employee.new('liz', '20', 'joe')


binding.pry
puts "done"
