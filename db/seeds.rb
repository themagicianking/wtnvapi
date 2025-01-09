# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

episodes = [
  {
    bonus: false,
    duration: "21:02",
    number: "1",
    summary: "Pilot Episode. A new dog park opens in Night Vale. Carlos, a scientist, visits and discovers some interesting things. Seismic things. Plus, a helpful guide to surveillance helicopter-spotting.",
    title: "Pilot"
  },
  {
    bonus: false,
    duration: "20:21",
    number: "2",
    summary: "A mysterious, glowing cloud makes its way across Night Vale. Plus, new Boy Scouts hierarchy, community events calendar, and a PTA bake sale for a great cause!",
    title: "Glow Cloud"
  },
  {
    bonus: false,
    duration: "20:56",
    number: "3",
    summary: "It's contract renewal time with station management, and negotiations get tricky. Plus, a new city litter initiative, books stop working, and a creeping fear comes to town!",
    title: "Station Management"
  },
  {
    bonus: false,
    duration: "21:10",
    number: "4",
    summary: "A protest against the removal of the Shape In Grove Park That No One Acknowledges Or Speaks About. Plus, changes to the school curriculum, a growing tarantula problem in town, and musical auditions!",
    title: "The Shape in Grove Park"
  },
  {
    bonus: false,
    duration: "23:17",
    number: "5",
    summary: "Last night's PTA meeting accidentally opens a rift in spacetime, and Night Vale faces the consequences. Plus, changes afoot at the Night Vale Daily Journal, controversy at Radon Canyon, and our annual high school football preview!",
    title: "PTA Meeting"
  }
]

episodes.each { |episode| Episode.find_or_create_by!(bonus: episode[:bonus], duration: episode[:duration], number: episode[:number], summary: episode[:summary], title: episode[:title]) }
