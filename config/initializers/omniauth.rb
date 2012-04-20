Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_ID'], ENV['TWITTER_SECRET']
  provider :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET'], 
    :scope => 'user_about_me,user_activities,user_birthday,user_checkins,user_education_history,user_events,user_groups,user_hometown,user_interests,user_likes,user_location,user_notes,user_photos,user_questions,user_relationships,user_relationship_details,user_religion_politics,user_status,user_videos,user_website,user_work_history,email,friends_about_me,friends_activities,friends_birthday,friends_checkins,friends_education_history,friends_events,friends_groups,friends_hometown,friends_interests,friends_likes,friends_location,friends_notes,friends_photos,friends_questions,friends_relationships,friends_relationship_details,friends_religion_politics,friends_status,friends_videos,friends_website,friends_work_history,read_friendlists,read_insights,read_mailbox,read_requests,read_stream'
    
  provider :foursquare, ENV['FOURSQUARE_ID'], ENV['FOURSQUARE_SECRET']
  provider :linkedin, ENV['LINKEDIN_ID'], ENV['LINKEDIN_SECRET']
  provider :netflix, ENV['NETFLIX_ID'], ENV['NETFLIX_SECRET']
  provider :rdio, ENV['RDIO_ID'], ENV['RDIO_SECRET']
  provider :instagram, ENV['INSTAGRAM_ID'], ENV['INSTAGRAM_SECRET']
  provider :flickr, ENV['FLICKR_ID'], ENV['FLICKR_SECRET']
  provider :meetup, ENV['MEETUP_ID'], ENV['MEETUP_SECRET']
  provider :github, ENV['GITHUB_ID'], ENV['GITHUB_SECRET']
  provider :youtube, ENV['YOUTUBE_ID'], ENV['YOUTUBE_SECRET']
  provider :runkeeper, ENV['RUNKEEPER_ID'], ENV['RUNKEEPER_SECRET']
end