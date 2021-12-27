class Employee #superclass
    attr_reader :salary, :name, :title, :boss

    def initialize(name, salary, title, boss = nil)
        @salary = salary
        @name = name
        @title = title
        @boss = boss 
        #
    end
  
    def bonus(multiplier)
        salary * multiplier
    end
end

class Manager < Employee #subclass
    attr_reader :employees
    
    def initialize(name, salary, title, boss = nil)
        super(name, salary, title, boss)
        @employees = []
    end

    def add_employee(name)
        self.employees << name
    end

    def bonus(multiplier)
        salary * multiplier
    end

    # calculate the total salary of many employees
    def total_salary
        total = 0
        employees.each do |employee|
            if !(employee.employees.empty?)
                total += employee.total_salary
            else
            total += employee.salary
            end 
        end
        total
    end
end

ned = Manager.new("Ned", 1000000, "Founder")
darren = Manager.new("Darren", 78000, "TA Manager", ned)
shawna = Employee.new("Shawna", 12000, "TA", darren)
david = Employee.new("David", 10000, "TA", darren)


