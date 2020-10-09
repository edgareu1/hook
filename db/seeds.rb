require 'open-uri'

# Destroy/Clean the existing DB
User.destroy_all
Log.destroy_all
Location.destroy_all
Catch.destroy_all
Fish.destroy_all

puts "Cleaned the existing DB"


# Create Fish
Fish.create(common_name: 'Yellow Fin Tuna', good_weight: 25000, scientific_name: 'Thunnus albacares', legal_weight: 2700, legal_size: 0, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/YELLOW_FIN_TUNA_wo1dl0.png", description: 'Live in shoals near the surface, however, sometimes make short dives to depths exceeding 500 m, looking for food like squid, crustaceans and a variety of fish. The reproductive peak occurs in the summer.', url: 'https://en.wikipedia.org/wiki/Yellowfin_tuna')
Fish.create(common_name: 'Bluemouth', good_weight: 600, scientific_name: 'Helicolenus dactylopterus', legal_weight: 0, legal_size: 0, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/BLUEMOUTH_vjzvfi.png", description: 'It dwells on the seabed between 200-1,000 m, often around underwater wrecks. It is a solitary species and aggregate only at the time of reproduction, which occurs in summer. It feeds on fish, crustaceans and some cephalopods.', url: 'https://en.wikipedia.org/wiki/Blackbelly_rosefish')
Fish.create(common_name: 'Horse Mackerel', good_weight: 450, scientific_name: 'Trachurus trachurus', legal_weight: 0, legal_size: 15, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/HORSE_MACKEREL_zdrlug.png", description: 'It inhabits the water column in the coastal areas, from the surface to the bottom, between 0 to 200 m of depth. Horse mackerels form large schools that migrate for long distances, feeding on small crustaceans, fish and molluscs. It spawns from December to April.', url: 'https://en.wikipedia.org/wiki/Atlantic_horse_mackerel')
Fish.create(common_name: 'Chub Mackerel', good_weight: 500, scientific_name: 'Scomber colias', legal_weight: 0, legal_size: 20, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/CHUB_MACKEREL_fho8ps.png", description: 'Inhabits the water column of the coastal areas down to 250 m depth. Chub Mackerels form large schools that are strongly migratory, remaining close to the bottom during the day and moving upwards at night to hunt for fish, molluscs and small crustaceans. It spawns from February to April, when the female releases 100,000 to 400,000 eggs.', url: 'https://en.wikipedia.org/wiki/Mackerel')
Fish.create(common_name: 'Wreckfish', good_weight: 12000, scientific_name: 'Polyprion americanus', legal_weight: 0, legal_size: 0, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/WRECKFISH_lsh66e.png", description: 'The juveniles can be found in the surface layers of the water column and the adults at depths between 100 and 200 m. Juveniles form schools and can be found close to floating objects, while adults are solitary and can be seen in caves or wrecks. It feeds on crustaceans, molluscs and fish. They have multiple spawns, from late July to early October.', url: 'https://en.wikipedia.org/wiki/Wreckfish')
Fish.create(common_name: 'Conger Eel', good_weight: 5000, scientific_name: 'Conger conger', legal_weight: 0, legal_size: 58, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/CONGER_EEL_evooso.png", description: 'Inhabits the waters near the bottom, but can live in depths exceeding 1,000 m. During the day it shelters in rocky crevices from where it gets out at night to hunt for fish, crustaceans and cephalopods, but it also hunts in the water column. It spawns in the summer months, away from the coast and at greater depths.', url: 'https://en.wikipedia.org/wiki/Conger')
Fish.create(common_name: 'Meagre', good_weight: 10000, scientific_name: 'Argyrosomus regius', legal_weight: 0, legal_size: 42, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252656/Hook/MEAGRE_qx6b8r.png", description: 'The Meagre that can attain a large size has an elongated body, oblique scales, silver coloured dark back and a large mouth with several rows of teeth. It inhabits the entire water column in areas between 15 and 200 m of depth. It is migratory and feeds on fish and crustaceans. It spawns from April to July, in estuaries and coastal lagoons.', url: 'https://en.wikipedia.org/wiki/Brown_meagre')
Fish.create(common_name: 'Gilt-head Seabream', good_weight: 1800, scientific_name: 'Sparus aurata', legal_weight: 0, legal_size: 19, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/GILT-HEAD_SEABREAM_shes6d.png", description: 'The Gilt-Head Seabream has a very oval grey silvery body and a golden spot between the eyes that brings this fish the name “gilt”. It inhabits the water column in areas down to 150 m of depth. It lives either solitarily or in small groups and feeds on molluscs, crustaceans and sea urchins. It spawns at sea from October to December but the juveniles seek the protection of the estuaries to develop.', url: 'https://en.wikipedia.org/wiki/Gilt-head_bream')
Fish.create(common_name: 'Swordfish', good_weight: 100000, scientific_name: 'Xiphias gladius', legal_weight: 25000, legal_size: 125, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/SWORDFISH_neyolx.png", description: 'The Swordfish has a wide body without scales, a bluish black back and lighter belly with an elongated snout forming a characteristic flattened sword that it uses to divide the schools and to defend itself. It inhabits the water column down to 800 m of depth. It is a solitary fish, highly migratory, very voracious and aggressive, ingesting their prey in one piece. It spawns from January to October.', url: 'https://en.wikipedia.org/wiki/Swordfish')
Fish.create(common_name: 'Blackspot Seabream', good_weight: 1500, scientific_name: 'Pagellus bogaraveo', legal_weight: 0, legal_size: 25, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/BLACKSPOT_SEABREAM_xpi8lh.png", description: 'The Blackspot Seabream has a reddish oval body, a dark spot near the head and the inside of the mouth is reddish-orange. It is found in the Northeast Atlantic, where it lives near the seabed down to 700 m, but most juveniles live in shoals along the coast. It feeds on crustaceans, molluscs and small fish. It spawns in summer and in the autumn.', url: 'https://en.wikipedia.org/wiki/Blackspot_seabream')
Fish.create(common_name: 'Sole', good_weight: 1800, scientific_name: 'Solea solea', legal_weight: 0, legal_size: 24, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252656/Hook/SOLE_uebbvx.png", description: 'The Sole, has an oval flattened body, usually white underside and brown upper side where both eyes are located. It blends into the bottom thereby camouflaging itself. Adults live in coastal areas down to 200 m depth while the juveniles prefer the estuaries. It feeds on small worms, molluscs and small crustaceans. It spawns from January to April.', url: 'https://en.wikipedia.org/wiki/Sole_(fish)')
Fish.create(common_name: 'Red Porgy', good_weight: 4000, scientific_name: 'Pagrus pagrus', legal_weight: 0, legal_size: 20, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252656/Hook/RED_PORGY_tccu33.png", description: 'The Red Porgy has a silvery-pink sturdy oval body, with a distinct lateral line of scales all the way to the tail fin. Juveniles are found in shallow and sheltered areas, migrating to deeper zones throughout their life, down to 300 m. It feeds on other fish, crustaceans and cephalopods. It spawns in spring and early summer. Most red porgies are born female and only change sex into males with sexual maturation.', url: 'https://en.wikipedia.org/wiki/Red_porgy')
Fish.create(common_name: 'John Dory', good_weight: 4000, scientific_name: 'Zeus faber', legal_weight: 0, legal_size: 0, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/JOHN_DORY_ofxkyd.png", description: 'The John Dory has an oval laterally compressed flat body and a dorsal fin with strong spines and membranes that extend into long filaments. It is greyish-green and gold with a characteristic black spot on both sides of the body. It inhabits waters close to the seabed, from the coast down to 400 m. It feeds on other fish and sometimes on squid and cuttlefish. It spawns in late winter and early spring.', url: 'https://en.wikipedia.org/wiki/John_Dory')
Fish.create(common_name: 'European Hake', good_weight: 9000, scientific_name: 'Merluccius merluccius', legal_weight: 0, legal_size: 27, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/EUROPEAN_HAKE_hvaia1.png", description: 'The European Hake has an elongated body, a large black mouth with numerous teeth and a prominent jaw; it has a dark grey back and silvery flanks and belly. It inhabits waters close to the bottom, between 30 and 1,000 m. It forms schools that migrate to deeper areas during the winter. It stays at the bottom during the day, coming to the water column at night to feed on fish such as anchovies, sardines and herring. It spawns mainly from January to April.', url: 'https://en.wikipedia.org/wiki/Hake')
Fish.create(common_name: 'European Sea Bass', good_weight: 3000, scientific_name: 'Dicentrarchus labrax', legal_weight: 0, legal_size: 36, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/EUROPEAN_SEA_BASS_illeqy.png", description: 'The European Sea Bass has an elongated silver-grey body with blue or green reflections. Inhabits the estuaries as a juvenile, supporting low salinity waters. The adults inhabit waters down to 100 m of depth. Juveniles form schools together with other species while the adults live alone. It feeds on crustaceans, fish and molluscs. It spawns from January to April.', url: 'https://en.wikipedia.org/wiki/European_bass')
Fish.create(common_name: 'Red Mullet', good_weight: 750, scientific_name: 'Mullus surmuletus', legal_weight: 0, legal_size: 18, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252656/Hook/RED_MULLET_zwzl9q.png", description: 'The Red Mullet is a small, reddish fish with three longitudinal yellow bands. It dwells on the bottom of the sea down to 100 m. It forms schools and feeds on crustaceans and small molluscs and fish. It spawns in late winter to early summer, the juveniles remaining in the water column, moving down to the bottom when they reach adulthood.', url: 'https://en.wikipedia.org/wiki/Red_mullet')
Fish.create(common_name: 'Sardine', good_weight: 100, scientific_name: 'Sardina pilchardus', legal_weight: 0, legal_size: 11, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252656/Hook/SARDINE_vwsbsa.png", description: 'The Sardine has an elongated body covered with scales, with a darker blue-silvery coloured back and lighter silvery coloured sides and belly. Inhabits the water column in coastal zones between 25-100 m of depth. It migrates in large schools that seek protection from predators during the day in deeper water and at night ascend to surface waters to feed on algae and small crustaceans. It spawns from October to April when it is leaner, and females can release 50,000 to 60,000 eggs.', url:'https://en.wikipedia.org/wiki/Sardine')
Fish.create(common_name: 'White Seabream', good_weight: 700, scientific_name: 'Diplodus sargus', legal_weight: 0, legal_size: 15, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/WHITE_SEABREAM_txrbxi.png", description: 'The White Seabream has a silver coloured oval body with nine vertical black bands and a characteristic black spot near the tail fin. It inhabits estuaries as a juvenile and depths down to 150 m as adult. It feeds mainly at night on molluscs, crustaceans, sea urchins and seaweed it finds on the bottom. Spawning occurs in late winter and early spring, when they form large schools.', url: 'https://en.wikipedia.org/wiki/Sargo')
Fish.create(common_name: 'Cuttlefish', good_weight: 1000, scientific_name: 'Sepia officinalis', legal_weight: 0, legal_size: 10, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/CUTTLEFISH_ibvmjo.png", description: 'The Cuttlefish has a flattened oval body with an internal shell, the cuttlebone, eight arms with suction cups and two rows of long, retractable tentacles that it uses to catch prey. The grey and white body often shows dark dorsal bands. It dwells close to the seabed, being more common down to 200 m. It is a nocturnal predator that feeds preferentially on crabs, mussels and fish. In the summer it migrates to more coastal waters; spawning occurs between February and October, the female laying up to 4,000 eggs.', url:'https://en.wikipedia.org/wiki/Cuttlefish')
Fish.create(common_name: 'Squid', good_weight: 1000, scientific_name: 'Loligo vulgaris', legal_weight: 0, legal_size: 10, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/SQUID_wdkdbc.png", description: 'The Squid has an elongated, cylindrical body with an internal shell, the gladius, triangular fins taking up two thirds of the body, eight arms with rows of suction cups and two non-retractable feeding tentacles that it uses to catch prey. It has a reddish-pink colour with brownish spots on the dorsal area. Inhabits depths between 20 and 250 m. It feeds mainly on fish and crustaceans. It spawns from October to February and April to June, at which moments it can be mainly found in coastal waters.', url:'https://en.wikipedia.org/wiki/Squid')
Fish.create(common_name: 'Common Octopus', good_weight: 3000, scientific_name: 'Octopus vulgaris', legal_weight: 750, legal_size: 0, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252655/Hook/COMMON_OCTOPUS_qqufwt.png", description: 'The Common Octopus has a soft bag-like body, eight arms with two rows of suction cups each and a colour and texture that varies according to the state of the animal and the surroundings, due to its camouflage ability. It inhabits the coastal waters down to 200 m of depth. It feeds on crustaceans (especially crabs), molluscs and fish. It spawns throughout the year, with periods of greater intensity in spring and autumn and the female dies after laying and caring for about 500,000 eggs. The males die after the mating period.', url: 'https://en.wikipedia.org/wiki/Octopus')
Fish.create(common_name: 'Spotted Seabass', good_weight: 1000, scientific_name: 'Dicentrarchus punctatus', legal_weight: 0, legal_size: 20, picture_url: "https://res.cloudinary.com/da7rlfd8u/image/upload/v1594252654/Hook/SPOTTED_SEABASS_wpz8ue.png", description: 'The Spotted Seabass has an elongated silver-grey body with small black spots. It inhabits coastal waters ranging in  depth from 0  - 30  meters.', url: 'https://en.wikipedia.org/wiki/Spotted_seabass')

puts "Created #{Fish.count} Fish"


# Create Users
["Edgar", "Julie", "Laure", "Thomas"].each do |user_name|
  new_user = User.new(username: user_name, email: "#{user_name.downcase}@gmail.com", password: "123456")

  # Attach a random avatar image
  file_avatar = URI.open('https://source.unsplash.com/random/400x400')
  new_user.avatar.attach(io: file_avatar, filename: 'nes.png', content_type: 'image/png')

  new_user.save
end

thomas = User.find_by(username: "Thomas")

puts "Created #{User.count} Users"


# Create Locations
loc1 = Location.create(name: "Cascais, Área Metropolitana de Lisboa, Portugal", latitude: 38.72240025, longitude: -9.396909171649877, spot: "Channel Spot", user: thomas)
loc2 = Location.create(name: "Sesimbra, Área Metropolitana de Lisboa, Portugal", latitude: 38.4436932, longitude: -9.0996273, spot: "Sargo Rock", user: thomas)
loc3 = Location.create(name: "Caparica, Setúbal, Portugal", latitude: 38.653741049999994,  longitude: -9.208969409268294, spot: "Caparica Spot", user: thomas)
loc4 = Location.create(name: "Porto, Norte, Portugal", latitude: 41.1494512, longitude: -8.6107884, spot: "SeaBass Park", user: thomas)
loc5 = Location.create(name: "Faro, Algarve, Portugal", latitude:  37.0162727, longitude: -7.9351771, spot: "Magic Land", user: thomas)

puts "Created #{Location.count} Locations"


# Create Logs
log1 = Log.create(start_time: Time.new(2020, 6, 20, 5, 0), end_time: Time.new(2020, 6, 20, 12, 0), rating: 8, observation: "", tag_id: 1, location: loc1, user: thomas)

log2 = Log.create(start_time: Time.new(2020, 6, 22, 9, 0), end_time:Time.new(2020, 6, 22, 12, 0), rating: 4, observation: "Lots of turbidity in the water. Water color was very green", tag_id: 2, location: loc1, user: thomas)
log2.update(air_pressure: 1002, wind_speed: 10.0, weather_icon: "02d", weather_description: "few clouds")

log3 = Log.create(start_time: Time.new(2020, 6, 24, 11, 0), end_time:Time.new(2020, 6, 24, 17, 30), rating: 8, observation: "None stop bust ups! Seems they were feeding on the smaller fish today. Consider pingalim.", tag_id: 3, location: loc1, user: thomas)
log3.update(air_pressure: 1002, wind_speed: 10.0, weather_icon: "03d", weather_description: "scattered clouds")

log4 = Log.create(start_time: Time.new(2020, 6, 27, 11, 0), end_time:Time.new(2020, 6, 27, 16, 0), rating: 6, observation: "", tag_id: 4, location: loc1, user: thomas)
log4.update(air_pressure: 1012, wind_speed: 8.3, weather_icon: "03d", weather_description: "scattered clouds")


log5 = Log.create(start_time: Time.new(2020, 7, 3, 20, 0), end_time:Time.new(2020, 7, 3, 23, 0), rating: 9, observation: "soft plastics were killing it today!", tag_id: 1, location: loc2, user: thomas)

log6 = Log.create(start_time: Time.new(2020, 7, 5, 11, 0), end_time:Time.new(2020, 7, 5, 17, 30), rating: 9, observation: "None stop bust ups! Seems they were feeding on the smaller fish today. Consider pingalim.", tag_id: 2, location: loc2, user: thomas)
log6.update(air_pressure: 1020, wind_speed: 7.0, weather_icon: "02d", weather_description: "few clouds")

log7 = Log.create(start_time: Time.new(2020, 7, 6, 11, 0), end_time:Time.new(2020, 7, 6, 15, 30), rating: 5, observation: "", tag_id: 3, location: loc2, user: thomas)
log7.update(air_pressure: 1025, wind_speed: 10.0, weather_icon: "01d", weather_description: "clear sky")

log8 = Log.create(start_time: Time.new(2020, 7, 8, 10, 0), end_time:Time.new(2020, 7, 8, 14, 0), rating: 7, observation: "To windy for me.", tag_id: 4, location: loc2, user: thomas)
log8.update(air_pressure: 1011, wind_speed: 9.8, weather_icon: "04n", weather_description: "broken clouds")

log9 = Log.create(start_time: Time.new(2020, 7, 8, 17, 0), end_time:Time.new(2020, 7, 8, 22, 0), rating: 5, observation: "Slow start, finished with an hour of activity before sunset.", tag_id: 5, location: loc2, user: thomas)
log9.update(air_pressure: 1025, wind_speed: 10.0, weather_icon: "01d", weather_description: "clear sky")


log10 = Log.create(start_time: Time.new(2020, 6, 2, 3, 0), end_time:Time.new(2020, 6, 2, 5, 0), rating: 2, observation: "waste of time....", tag_id: 1, location: loc3, user: thomas)

log11 = Log.create(start_time: Time.new(2020, 6, 2, 13, 0), end_time:Time.new(2020, 6, 2, 15, 0), rating: 5, observation: "", tag_id: 2, location: loc3, user: thomas)
log11.update(air_pressure: 1014, wind_speed: 4.2, weather_icon: "01d", weather_description: "clear sky")

log12 = Log.create(start_time: Time.new(2020, 6, 5, 20, 0), end_time:Time.new(2020, 6, 5, 23, 0), rating: 6, observation: "", tag_id: 3, location: loc3, user: thomas)
log12.update(air_pressure: 1018, wind_speed: 8.3, weather_icon: "03d", weather_description: "scattered clouds")

log13 = Log.create(start_time: Time.new(2020, 6, 6, 20, 0), end_time:Time.new(2020, 6, 6, 23, 0), rating: 6, observation: "Too dark too see on this spot", tag_id: 4, location: loc3, user: thomas)
log13.update(air_pressure: 1008, wind_speed: 4.3, weather_icon: "04n", weather_description: "broken clouds")

log14 = Log.create(start_time: Time.new(2020, 6, 7, 10, 0), end_time:Time.new(2020, 6, 7, 13, 0), rating: 9, observation: "Prety cool", tag_id: 5, location: loc3, user: thomas)
log14.update(air_pressure: 1029, wind_speed: 2.7, weather_icon: "01d", weather_description: "clear sky")

log15 = Log.create(start_time: Time.new(2020, 6, 7, 20, 0), end_time:Time.new(2020, 6, 7, 22, 0), rating: 5, observation: "", tag_id: 6, location: loc3, user: thomas)
log15.update(air_pressure: 1027, wind_speed: 3.3, weather_icon: "01d", weather_description: "clear sky")

log16 = Log.create(start_time: Time.new(2020, 6, 8, 7, 0), end_time:Time.new(2020, 6, 8, 11, 0), rating: 8, observation: "", tag_id: 7, location: loc3, user: thomas)
log16.update(air_pressure: 1015, wind_speed: 2.5, weather_icon: "01d", weather_description: "clear sky")


log17 = Log.create(start_time: Time.new(2020, 7, 2, 3, 0), end_time:Time.new(2020, 7, 2, 5, 0), rating: 2, observation: "waste of time....", tag_id: 1, location: loc4, user: thomas)

log18 = Log.create(start_time: Time.new(2020, 7, 7, 19, 0), end_time:Time.new(2020, 7, 7, 23, 0), rating: 4, observation: "", tag_id: 2, location: loc4, user: thomas)
log18.update(air_pressure: 1019, wind_speed: 7.1, weather_icon: "01d", weather_description: "clear sky")


log19 = Log.create(start_time: Time.new(2020, 6, 25, 9, 0), end_time:Time.new(2020, 6, 25, 17, 0), rating: 8, observation: "Sardine and mussels were activating", tag_id: 1, location: loc5, user: thomas)

log20 = Log.create(start_time: Time.new(2020, 6, 28, 20, 0), end_time:Time.new(2020, 6, 28, 24, 0), rating: 7, observation: " ", tag_id: 2, location: loc5, user: thomas)
log20.update(air_pressure: 1012, wind_speed: 5.0, weather_icon: "04n", weather_description: "broken clouds")

log21 = Log.create(start_time: Time.new(2020, 6, 29, 6, 0), end_time:Time.new(2020, 6, 29, 14, 0), rating: 9, observation: " ", tag_id: 3, location: loc5, user: thomas)
log21.update(air_pressure: 1030, wind_speed: 5.0, weather_icon: "04n", weather_description: "broken clouds")

log22 = Log.create(start_time: Time.new(2020, 7, 1, 7, 0), end_time:Time.new(2020, 7, 1, 14, 0), rating: 6, observation: "", tag_id: 4, location: loc5, user: thomas)
log22.update(air_pressure: 1009, wind_speed: 8.3, weather_icon: "03d", weather_description: "scattered clouds")

puts "Created #{Log.count} Logs"


# Create Catches
fish = Fish.all
logs = Log.all

25.times do
  rand_num = rand(1..3)
  Catch.create!(fish: fish.sample, quantity: rand_num, weight: rand_num * rand(3..5) * 300, log: logs.sample)
end

8.times do
  rand_num = rand(4..6)
  Catch.create!(fish: fish.sample, quantity: rand_num, weight: rand_num * rand(5..8) * 200, log: logs.sample)
end

2.times do
  rand_num = rand(1..2)
  Catch.create!(fish: fish.sample, quantity: rand_num, weight: rand_num * rand(10..14) * 400, log: logs.sample)
end

puts "Created #{Catch.count} Catches"
