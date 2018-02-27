require './test/test_helper'
require './lib/company'

class CompanyTest < Minitest::Test
  def test_instantiation
    company = Company.new
    assert_instance_of Company, company
  end

  def test_employee
    company = Company.new
    employee_1 = Employee.new(1,"Susan Smith","Manager",2016-01-01,2018-02-20)
    employee_2 = Employee.new(nil,"John Smith","Manager",2016-01-01,2018-02-02)
    company.loademployees(employee_1)
    company.loademployees(employee_2)

    assert_instance_of employee_1, company.employees
    refute_instance_of employee_2, company.employees
  end
end
