# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AuthClient.create([{name: 'facebook', title: 'Facebook'},
  {name: 'flickr', title: 'Flickr'},
  {name: 'foursquare', title: 'Foursquare'},
  {name: 'github', title: 'GitHub'},
  {name: 'instagram', title: 'Instagram'},
  {name: 'linkedin', title: 'Linkedin'},
  {name: 'meetup', title: 'Meetup.com'},
  {name: 'netflix', title: 'Netflix'},
  {name: 'rdio', title: 'Rdio'},
  {name: 'runkeeper', title: 'RunKeeper'},
  {name: 'twitter', title: 'Twitter'}
  ])
