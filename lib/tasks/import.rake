require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do
    CSV.foreach('listings.csv', :headers => true) do |row|
      Listing.create!(row.to_hash)
    end
end
