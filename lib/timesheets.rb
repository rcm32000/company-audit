class TimeSheet
  attr_reader :employee_id, :project_id, :date, :minutes

  def initialize(employee_id, project_id, date, minutes)
    @employee_id  = employee_id
    @project_id   = project_id
    @date         = date
    @minutes      = minutes
  end
end
