Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_ID'], ENV['TWITTER_SECRET']
  provider :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET']
  provider :foursquare, ENV['FOURSQUARE_ID'], ENV['FOURSQUARE_SECRET']
  provider :linkedin, ENV['LINKEDIN_ID'], ENV['LINKEDIN_SECRET']
  provider :netflix, ENV['NETFLIX_ID'], ENV['NETFLIX_SECRET']
  provider :rdio, ENV['RDIO_ID'], ENV['RDIO_SECRET']
  provider :instagram, ENV['INSTAGRAM_ID'], ENV['INSTAGRAM_SECRET']
  provider :flickr, ENV['FLICKR_ID'], ENV['FLICKR_SECRET']
  provider :meetup, ENV['MEETUP_ID']
end