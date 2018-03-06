namespace :dummy_cooker do
  desc "Dummy data for turnover app"
  task grill: :environment do
    knit = Company.find_or_create_by name: 'Knit App'
    50.times.each do |i|
      employee = Employee.create name: "Name #{i}", location: "PNP #{i}"
      knit.employees << employee
    end
  end
end
