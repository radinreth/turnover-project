class Employment < ActiveRecord::Base
  belongs_to :company
  belongs_to :employee

  before_save :set_hire_date_to_current

  private

  def set_hire_date_to_current
    self.hire_date = Date.today - rand(100)
    self.leave_date = Date.today - rand(10) if rand_num(1,5).odd?
    self.department = %w(Web Mobile DBA Security Designer).sample
  end

  def rand_num(min, max)
    ( rand() * max ).floor + min
  end
end
