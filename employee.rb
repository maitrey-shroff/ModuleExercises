module EmployeeProgram
  class Employee
    include EmailReporter

    attr_reader :first_name, :last_name

    def initialize(input_options)
      @first_name = input_options[:first_name]
      @last_name = input_options[:last_name]
      @salary = input_options[:salary]
      @active = input_options[:active]
    end

    def print_info
      puts "#{@first_name} #{@last_name} makes #{@salary} a year. Employment status = #{@active.to_s}"
    end

    def give_annual_raise
      @salary = 1.05 * @salary
    end

    def fire
      @active = false
    end
  end
end