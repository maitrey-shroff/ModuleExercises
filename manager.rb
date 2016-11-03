class Manager < Employee
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.fire
    end
  end
end

# employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
# employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info

# manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
# manager.give_all_raises
# employee1.print_info
# employee2.print_info
# manager.fire_all_employees
# employee2.print_info
# manager.print_info
# intern = Intern.new(first_name: "intern", last_name: "guy", salary: 100, active: true)