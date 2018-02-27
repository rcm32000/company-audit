class Company

  attr_reader :employees, :projects, :timesheets

  def initialize
    @employees   = []
    @projects    = []
    @timesheets  = []
  end

  def loademployees(filename)
    File.readlines(filename).each do |compare|
    @employees << compare if valid_employee?
    end
  end

  def valid_employee?(filename)
    File.readline(filename).each do |compare|
      true if compare.include?(employee_id && name && start_date && end_date)
    end
  end
end
