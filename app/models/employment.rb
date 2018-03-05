class Employment < ActiveRecord::Base
  belongs_to :company
  belongs_to :employee

  before_save :set_hire_date_to_current

  private

  def set_hire_date_to_current
    self.hire_date = Date.today
  end
end
