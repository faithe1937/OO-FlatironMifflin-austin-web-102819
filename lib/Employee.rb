class Employee

    attr_accessor :name, :salary, :manager
    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end 

    def self.all
        @@all
    end 

    #takes an argument
    #return array of all EMPLOYEES whose SALARIES are over that amount
    def self.paid_over(this_amount)
         @@all.select {|amount| amount.salary > this_amount}
    end 
    #takes an argument (name of department)
    #returns the first employee whose manager is working in the dept.
    def self.find_by_department(department)
        Employee.all.find {|employee| employee.manager.department == department}
    end 

    #returns an array of all the employees whose salaries are within 

    def tax_bracket
        @@all.select {|emp| emp.salary.between?(self.salary - 1000, self.salary + 1000)}
    end 

end
