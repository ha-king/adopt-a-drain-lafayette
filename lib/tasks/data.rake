require 'rake'
namespace :data do
  require 'open-uri'
  require 'csv'
  require 'json'
  task load_drains: :environment do
    puts 'Loading drains...'
    url = 'lafcoo-500.csv'
    csv_string = open(url).read
    drains = CSV.parse(csv_string, headers: true)
    puts "#{drains.size} Drains."
    total = 0
    drains.each_slice(500) do |group|
      updated = 0
      created = 0
      group.each do |drain|
        Thing.where(city_id: group).first_or_initialize.tap do |thing|        
          thing.name = "Some Drain #{total}"
          thing.lat = drain['lat']
          thing.lng = drain['lon']
          thing.system_use_code = drain['type']
          thing.priority = [true, false]
          thing.save!
          total += 1
        end
      end
      print "updated/created: #{updated}/#{created} ... #{total}\n"
    end
  end
end
