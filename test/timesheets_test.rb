require './test/test_helper'
require './lib/timesheets'

class TimeSheetTest < Minitest::Test
  def test_instantiation
    timesheet = TimeSheet.new(1,1,2016-01-01,480)
    assert_instance_of TimeSheet, timesheet
  end

  def test_attributes
    timesheet = TimeSheet.new(1,1,2016-01-01,480)
    assert_equal 1, timesheet.employee_id
    assert_equal 1, timesheet.project_id
    assert_equal 2016-01-01, timesheet.date
    assert_equal 480, timesheet.minutes
  end
end
