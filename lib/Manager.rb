class Manager

    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age 
        @@all << self
    end 

#array of all employees the manager oversees
def employees
    Employee.select{|employees| employees.manager == self.name}
end 

#takes a string and fixnum argument
#of an employees name, salary, respectively
#adds that employee to the list of employees that manager oversees
def hire_employee(employee_name, employee_salary)
    Employee.new(employee_name, employee_salary, self.name)
end

def self.all
    @@all << self 
end 

def self.all_departments
    @@all.map{|dep| dep.department}
end 

#returns a float (.to_f) that is average of all managers
def self.average_age
    all_ages = []
    @@all.each {|ages| all_ages << ages.age}
    all_ages.reduce(0) {|sum, num| sum + num}.to_f / all_ages.length
end 

end 
