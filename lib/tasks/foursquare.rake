namespace :foursquare do
  desc 'Cache all foursquare categories in the DB'
  task cache_places: :environment do
    City.where(name: ['Madrid', 'Paris', 'Berlin', 'Oslo', 'Stockholm', 'New York', 'Brussels', 'Amsterdam', 'Seoul', 'Ljubljana']).each do |city|
      puts "-----------------------------------"
      puts "GETING PLACES FOR #{city.name}"
      puts "-----------------------------------"

      Category.find_each do |category|
        puts "Creating places for #{category.name}"

        Foursquare.create_places(city: city.name, category: category, limit: 10)
      end
    end
  end
end
