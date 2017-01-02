class Employee
  attr_reader :name, :salary
	
	def name=(name)
		if name == ""
		raise "Name can't be blank!"
	  end
	  @name = name
	end
	
	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} isn't valid!"
		end
		@salary = salary
	end
	
	def initialize arg
		puts arg
		@name = arg[:name]
		@salary = arg[:salary]
	end

	def print_pay_stub
		puts "Name: #{@name}"
		pay_for_period = (@salary / 365.0) * 14
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay This Period: #{formatted_pay}"
	end
end

@user = Employee.new(name: "Duong", salary: 1000)
@user.print_pay_stub