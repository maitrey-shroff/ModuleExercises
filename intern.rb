module EmployeeProgram
  class Intern < Employee
    include EmailReporter
  end
end