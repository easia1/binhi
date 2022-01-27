namespace :import do
  desc "Import data from spreadsheet"
  task data: :environment do
    puts 'Importing Data'

    data = Roo::Spreadsheet.open('lib/genera.xlsx') # open spreadsheet
    headers = data.row(1) # get header row

    (2..data.last_row).each do |i|
      family = data.row(i)[1]
      genus = data.row(i)[2]
      hybrid = data.row(i)[0]

      imported_family = Family.find_or_create_by(name: family)
      Genus.find_or_create_by(name: genus, symbol: hybrid, family_id: imported_family.id)
      print '.'
    end

    puts 'Imported Data'
  end
end

# To run, type: bundle exec rails import:data