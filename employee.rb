require "byebug"

class Employee #superclass
    attr_reader :salary, :name, :title, :boss

    def initialize(name, salary, title, boss = nil)
        @salary = salary
        @name = name
        @title = title
        self.boss=(boss)
        #boss= 
        #self = Darren => Employee/Manager
        #parent = Ned =>Sr Manager
        #parent's child = Ned's array of @employees = []
    end

    def boss=(node)
        
        @boss = node
        if boss == nil
            return nil
        else
            self.boss.employees << self
        end
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
        self.total_salary * multiplier
    end
    # ned.bonus(5) # => 500_000
    # darren.bonus(4) # => 88_000
    # david.bonus(3) # => 30_000
    # calculate the total salary of many employees
    def total_salary
        
        total = 0
        self.employees.each do |employee| 
      
            if employee.is_a?(Manager) # if this is a mgr
                total += employee.salary + employee.total_salary#TAs #+78,000
            else
                total += employee.salary #+12,000, +10,000
            end 
        end
        total
    end
end

ned = Manager.new("Ned", 1000000, "Founder")
darren = Manager.new("Darren", 78000, "TA Manager", ned) # as child/employee of Ned
shawna = Employee.new("Shawna", 12000, "TA", darren)
david = Employee.new("David", 10000, "TA", darren)


