class Employee #superclass
    attr_reader :salary, :name, :title, :boss

    def initialize(name, salary, title, boss = nil)
        @salary = salary
        @name = name
        @title = title
        @boss = boss 
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
end