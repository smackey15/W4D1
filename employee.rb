class Employee
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

class Manager < Employee
    
    def initialize(name, salary, title, boss = nil)
        @salary = salary
        @name = name
        @title = title
        @boss = boss 
        @employees = []
    end

    def bonus(multiplier)
        salary * multiplier
    end
end