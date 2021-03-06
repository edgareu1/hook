require "open-uri"
include MoonPhaseHelper

# Clean the existing DB
Catch.destroy_all
Log.destroy_all
Location.destroy_all
User.destroy_all
Fish.destroy_all

puts "Cleaned the existing DB"

# Create the Fish
Fish.create(name: "Yellow Fin Tuna",    good_weight: 25000,  legal_weight: 2700,  legal_size: 0,   picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/YELLOW_FIN_TUNA_wo1dl0.png",    url: "https://en.wikipedia.org/wiki/Yellowfin_tuna",          description: "Live in shoals near the surface, however, sometimes make short dives to depths exceeding 500 m, looking for food like squid, crustaceans and a variety of fish. The reproductive peak occurs in the summer.")
Fish.create(name: "Bluemouth",          good_weight: 600,    legal_weight: 0,     legal_size: 0,   picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/BLUEMOUTH_vjzvfi.png",          url: "https://en.wikipedia.org/wiki/Blackbelly_rosefish",     description: "It dwells on the seabed between 200-1,000 m, often around underwater wrecks. It is a solitary species and aggregate only at the time of reproduction, which occurs in summer. It feeds on fish, crustaceans and some cephalopods.")
Fish.create(name: "Horse Mackerel",     good_weight: 450,    legal_weight: 0,     legal_size: 15,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/HORSE_MACKEREL_zdrlug.png",     url: "https://en.wikipedia.org/wiki/Atlantic_horse_mackerel", description: "It inhabits the water column in the coastal areas, from the surface to the bottom, between 0 to 200 m of depth. Horse mackerels form large schools that migrate for long distances, feeding on small crustaceans, fish and molluscs. It spawns from December to April.")
Fish.create(name: "Chub Mackerel",      good_weight: 500,    legal_weight: 0,     legal_size: 20,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/CHUB_MACKEREL_fho8ps.png",      url: "https://en.wikipedia.org/wiki/Mackerel",                description: "Inhabits the water column of the coastal areas down to 250 m depth. Chub Mackerels form large schools that are strongly migratory, remaining close to the bottom during the day and moving upwards at night to hunt for fish, molluscs and small crustaceans. It spawns from February to April, when the female releases 100,000 to 400,000 eggs.")
Fish.create(name: "Wreckfish",          good_weight: 12000,  legal_weight: 0,     legal_size: 0,   picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/WRECKFISH_lsh66e.png",          url: "https://en.wikipedia.org/wiki/Wreckfish",               description: "The juveniles can be found in the surface layers of the water column and the adults at depths between 100 and 200 m. Juveniles form schools and can be found close to floating objects, while adults are solitary and can be seen in caves or wrecks. It feeds on crustaceans, molluscs and fish. They have multiple spawns, from late July to early October.")
Fish.create(name: "Conger Eel",         good_weight: 5000,   legal_weight: 0,     legal_size: 58,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/CONGER_EEL_evooso.png",         url: "https://en.wikipedia.org/wiki/Conger",                  description: "Inhabits the waters near the bottom, but can live in depths exceeding 1,000 m. During the day it shelters in rocky crevices from where it gets out at night to hunt for fish, crustaceans and cephalopods, but it also hunts in the water column. It spawns in the summer months, away from the coast and at greater depths.")
Fish.create(name: "Meagre",             good_weight: 10000,  legal_weight: 0,     legal_size: 42,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252656/Hook/MEAGRE_qx6b8r.png",             url: "https://en.wikipedia.org/wiki/Brown_meagre",            description: "The Meagre that can attain a large size has an elongated body, oblique scales, silver coloured dark back and a large mouth with several rows of teeth. It inhabits the entire water column in areas between 15 and 200 m of depth. It is migratory and feeds on fish and crustaceans. It spawns from April to July, in estuaries and coastal lagoons.")
Fish.create(name: "Gilt-head Seabream", good_weight: 1800,   legal_weight: 0,     legal_size: 19,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/GILT-HEAD_SEABREAM_shes6d.png", url: "https://en.wikipedia.org/wiki/Gilt-head_bream",         description: "The Gilt-Head Seabream has a very oval grey silvery body and a golden spot between the eyes that brings this fish the name “gilt”. It inhabits the water column in areas down to 150 m of depth. It lives either solitarily or in small groups and feeds on molluscs, crustaceans and sea urchins. It spawns at sea from October to December but the juveniles seek the protection of the estuaries to develop.")
Fish.create(name: "Swordfish",          good_weight: 100000, legal_weight: 25000, legal_size: 125, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/SWORDFISH_neyolx.png",          url: "https://en.wikipedia.org/wiki/Swordfish",               description: "The Swordfish has a wide body without scales, a bluish black back and lighter belly with an elongated snout forming a characteristic flattened sword that it uses to divide the schools and to defend itself. It inhabits the water column down to 800 m of depth. It is a solitary fish, highly migratory, very voracious and aggressive, ingesting their prey in one piece. It spawns from January to October.")
Fish.create(name: "Blackspot Seabream", good_weight: 1500,   legal_weight: 0,     legal_size: 25,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/BLACKSPOT_SEABREAM_xpi8lh.png", url: "https://en.wikipedia.org/wiki/Blackspot_seabream",      description: "The Blackspot Seabream has a reddish oval body, a dark spot near the head and the inside of the mouth is reddish-orange. It is found in the Northeast Atlantic, where it lives near the seabed down to 700 m, but most juveniles live in shoals along the coast. It feeds on crustaceans, molluscs and small fish. It spawns in summer and in the autumn.")
Fish.create(name: "Sole",               good_weight: 1800,   legal_weight: 0,     legal_size: 24,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252656/Hook/SOLE_uebbvx.png",               url: "https://en.wikipedia.org/wiki/Sole_(fish)",             description: "The Sole, has an oval flattened body, usually white underside and brown upper side where both eyes are located. It blends into the bottom thereby camouflaging itself. Adults live in coastal areas down to 200 m depth while the juveniles prefer the estuaries. It feeds on small worms, molluscs and small crustaceans. It spawns from January to April.")
Fish.create(name: "Red Porgy",          good_weight: 4000,   legal_weight: 0,     legal_size: 20,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252656/Hook/RED_PORGY_tccu33.png",          url: "https://en.wikipedia.org/wiki/Red_porgy",               description: "The Red Porgy has a silvery-pink sturdy oval body, with a distinct lateral line of scales all the way to the tail fin. Juveniles are found in shallow and sheltered areas, migrating to deeper zones throughout their life, down to 300 m. It feeds on other fish, crustaceans and cephalopods. It spawns in spring and early summer. Most red porgies are born female and only change sex into males with sexual maturation.")
Fish.create(name: "John Dory",          good_weight: 4000,   legal_weight: 0,     legal_size: 0,   picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/JOHN_DORY_ofxkyd.png",          url: "https://en.wikipedia.org/wiki/John_Dory",               description: "The John Dory has an oval laterally compressed flat body and a dorsal fin with strong spines and membranes that extend into long filaments. It is greyish-green and gold with a characteristic black spot on both sides of the body. It inhabits waters close to the seabed, from the coast down to 400 m. It feeds on other fish and sometimes on squid and cuttlefish. It spawns in late winter and early spring.")
Fish.create(name: "European Hake",      good_weight: 9000,   legal_weight: 0,     legal_size: 27,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/EUROPEAN_HAKE_hvaia1.png",      url: "https://en.wikipedia.org/wiki/Hake",                    description: "The European Hake has an elongated body, a large black mouth with numerous teeth and a prominent jaw; it has a dark grey back and silvery flanks and belly. It inhabits waters close to the bottom, between 30 and 1,000 m. It forms schools that migrate to deeper areas during the winter. It stays at the bottom during the day, coming to the water column at night to feed on fish such as anchovies, sardines and herring. It spawns mainly from January to April.")
Fish.create(name: "European Sea Bass",  good_weight: 3000,   legal_weight: 0,     legal_size: 36,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/EUROPEAN_SEA_BASS_illeqy.png",  url: "https://en.wikipedia.org/wiki/European_bass",           description: "The European Sea Bass has an elongated silver-grey body with blue or green reflections. Inhabits the estuaries as a juvenile, supporting low salinity waters. The adults inhabit waters down to 100 m of depth. Juveniles form schools together with other species while the adults live alone. It feeds on crustaceans, fish and molluscs. It spawns from January to April.")
Fish.create(name: "Red Mullet",         good_weight: 750,    legal_weight: 0,     legal_size: 18,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252656/Hook/RED_MULLET_zwzl9q.png",         url: "https://en.wikipedia.org/wiki/Red_mullet",              description: "The Red Mullet is a small, reddish fish with three longitudinal yellow bands. It dwells on the bottom of the sea down to 100 m. It forms schools and feeds on crustaceans and small molluscs and fish. It spawns in late winter to early summer, the juveniles remaining in the water column, moving down to the bottom when they reach adulthood.")
Fish.create(name: "Sardine",            good_weight: 100,    legal_weight: 0,     legal_size: 11,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252656/Hook/SARDINE_vwsbsa.png",            url: "https://en.wikipedia.org/wiki/Sardine",                 description: "The Sardine has an elongated body covered with scales, with a darker blue-silvery coloured back and lighter silvery coloured sides and belly. Inhabits the water column in coastal zones between 25-100 m of depth. It migrates in large schools that seek protection from predators during the day in deeper water and at night ascend to surface waters to feed on algae and small crustaceans. It spawns from October to April when it is leaner, and females can release 50,000 to 60,000 eggs.")
Fish.create(name: "White Seabream",     good_weight: 700,    legal_weight: 0,     legal_size: 15,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/WHITE_SEABREAM_txrbxi.png",     url: "https://en.wikipedia.org/wiki/Sargo",                   description: "The White Seabream has a silver coloured oval body with nine vertical black bands and a characteristic black spot near the tail fin. It inhabits estuaries as a juvenile and depths down to 150 m as adult. It feeds mainly at night on molluscs, crustaceans, sea urchins and seaweed it finds on the bottom. Spawning occurs in late winter and early spring, when they form large schools.")
Fish.create(name: "Cuttlefish",         good_weight: 1000,   legal_weight: 0,     legal_size: 10,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/CUTTLEFISH_ibvmjo.png",         url: "https://en.wikipedia.org/wiki/Cuttlefish",              description: "The Cuttlefish has a flattened oval body with an internal shell, the cuttlebone, eight arms with suction cups and two rows of long, retractable tentacles that it uses to catch prey. The grey and white body often shows dark dorsal bands. It dwells close to the seabed, being more common down to 200 m. It is a nocturnal predator that feeds preferentially on crabs, mussels and fish. In the summer it migrates to more coastal waters; spawning occurs between February and October, the female laying up to 4,000 eggs.")
Fish.create(name: "Squid",              good_weight: 1000,   legal_weight: 0,     legal_size: 10,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/SQUID_wdkdbc.png",              url: "https://en.wikipedia.org/wiki/Squid",                   description: "The Squid has an elongated, cylindrical body with an internal shell, the gladius, triangular fins taking up two thirds of the body, eight arms with rows of suction cups and two non-retractable feeding tentacles that it uses to catch prey. It has a reddish-pink colour with brownish spots on the dorsal area. Inhabits depths between 20 and 250 m. It feeds mainly on fish and crustaceans. It spawns from October to February and April to June, at which moments it can be mainly found in coastal waters.")
Fish.create(name: "Common Octopus",     good_weight: 3000,   legal_weight: 750,   legal_size: 0,   picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/COMMON_OCTOPUS_qqufwt.png",     url: "https://en.wikipedia.org/wiki/Octopus",                 description: "The Common Octopus has a soft bag-like body, eight arms with two rows of suction cups each and a colour and texture that varies according to the state of the animal and the surroundings, due to its camouflage ability. It inhabits the coastal waters down to 200 m of depth. It feeds on crustaceans (especially crabs), molluscs and fish. It spawns throughout the year, with periods of greater intensity in spring and autumn and the female dies after laying and caring for about 500,000 eggs. The males die after the mating period.")
Fish.create(name: "Spotted Seabass",    good_weight: 1000,   legal_weight: 0,     legal_size: 20,  picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/SPOTTED_SEABASS_wpz8ue.png",    url: "https://en.wikipedia.org/wiki/Spotted_seabass",         description: "The Spotted Seabass has an elongated silver-grey body with small black spots. It inhabits coastal waters ranging in  depth from 0  - 30  meters.")

puts "Created #{Fish.count} Fish"

# Users list
Users_list = ["Demo"]

# Minor locations data (will have a few logs)
Minor_locations_data = [
  { spot: "Fort Rock",    name: "Mafra" },
  { spot: "Old Harbor",   name: "Oeiras" },
  { spot: "Beach Dunes",  name: "Seixal" },
  { spot: "Cliff Rock",   name: "Sesimbra" },
  { spot: "Wood Walkway", name: "Sintra" }
]

# Main locations data (will have many logs)
Main_locations_data = [
  { spot: "Blue Rock",    name: "Alcochete" },
  { spot: "Old Boat",     name: "Almada" },
  { spot: "Bar Platform", name: "Cascais" },
  { spot: "Wood Dock",    name: "Costa de Caparica" },
  { spot: "Rocky Side",   name: "Lisboa" }
]

# Weather data
Weather_data = [
  { icon: "01", description: "clear sky" },
  { icon: "02", description: "few clouds" },
  { icon: "03", description: "scattered clouds" },
  { icon: "04", description: "broken clouds" },
  { icon: "09", description: "shower rain" },
  { icon: "10", description: "rain" }
]

# Method that creates a random Location for a specific User
def create_location(user, location_data)
  user.locations.create(
    name: location_data[:name] + ", Área Metropolitana de Lisboa, Portugal",
    spot: location_data[:spot]
  )
end

# Method that creates a random Log for a specific User, Location and date
def create_log(user, location, date)
  # Randomize the date hour
  log_start_time = date.advance(hours: rand(6..14))

  # Create Log (weather data is automatically fetched)
  new_log = user.logs.create(
    location:    location,
    start_time:  log_start_time,
    end_time:    log_start_time.advance(hours: rand(2..8)),
    rating:      Math.sqrt(rand(1..100)).floor,
    observation: Faker::ChuckNorris.fact.truncate(120),
    tag_id:      location.logs_count + 1
  )

  log_weather = Weather_data.sample
  # Get the time period of the Log ("d" for day; "n" for night)
  log_time_period = log_start_time.hour.between?(8, 20) ? "d" : "n"

  # Randomize the weather data
  new_log.update(
    temperature:         rand(100..300).fdiv(10),
    air_pressure:        rand(1000..1020),
    wind_speed:          rand(10..100).fdiv(10),
    moon_phase:          get_moon_phase(log_start_time),
    weather_icon:        log_weather[:icon] + log_time_period,
    weather_description: log_weather[:description]
  )

  return new_log
end

# Method that quantifies the Log success chance ("power"); This method
# simulates a linear regression that the prediction feature of this app will
# try to find
def log_power(log)
  # The higher the temperature, the better the Log
  temperature_power = (log.temperature - 10).fdiv(20)
  # The lower the air pressure, the better the Log
  air_pressure_power = ((log.air_pressure - 1000).fdiv(20) - 1).abs
  # The lower the wind speed, the better the Log
  wind_speed_power = (10 - log.wind_speed).fdiv(10)

  # Log fishing power
  log_power = (log.moon_phase * 0.45) +
    (temperature_power * 0.15) +
    (air_pressure_power * 0.3) +
    (wind_speed_power * 0.1)

  # Log power will depend on the Location; half the locations will be biased
  # towards certain weather conditions, and the other half will be biased to
  # the opposite weather conditions
  return (log.location.id.odd? ? log_power : (1 - log_power))
end

# Method that creates a Catch for a specific Log
def create_catch(log)
  log_power = log_power(log)
  log_catches = log.catches.map(&:fish)

  # Randomize the Catch based on the Log "power"
  catch_fish = Fish.where("good_weight <= ?", 1000)
    .reject { |fish| log_catches.include?(fish) }
    .sample
  catch_quantity = [(rand(3.5..4) * log_power).ceil, 1].max
  catches_weight = (catch_quantity * 800 * log_power).round

  # Create the Catch
  log.catches.create(
    fish:     catch_fish,
    quantity: catch_quantity,
    weight:   catches_weight
  )
end

# Populate the DB
Users_list.each do |username|
  # Create a new User
  new_user = User.create(
    username: username,
    email:    "#{username.downcase}@gmail.com",
    password: "123456"
  )

  # Date of the Logs (begin 220 days ago)
  date = DateTime.now.ago(220.days).beginning_of_day

  # Create the minor Locations
  Minor_locations_data.each do |location_data|
    create_location(new_user, location_data)
  end
  minor_locations = new_user.locations

  # 2 Logs per minor Location
  2.times do
    minor_locations.shuffle.each do |loc|
      # Create the Log
      new_log = create_log(new_user, loc, date)
      date = date.advance(days: 2)

      # Create random Catches
      (rand() * 2).floor.times { create_catch(new_log) }
    end
  end

  # Create the major Locations
  Main_locations_data.each do |location_data|
    create_location(new_user, location_data)
  end
  main_locations = new_user.locations.last(Main_locations_data.size)

  # 20 Logs per major Location
  20.times do
    main_locations.shuffle.each do |loc|
      # Create the Log
      new_log = create_log(new_user, loc, date)
      date = date.advance(days: 1)

      # Create random Catches
      (3.5 * log_power(new_log)).floor.times { create_catch(new_log) }
    end
  end

  puts "Created the User #{new_user.username} with: " +
    "#{new_user.locations_count} Locations; " +
    "#{new_user.logs_count} Logs; " +
    "#{new_user.catches_count} Catches."
end
