module ApplicationHelper
  def formatted_date(date)
    date.in_time_zone.strftime('%m/%d/%Y')
  end
  
  def formatted_time(time)
    time.in_time_zone.strftime('%I:%M%p').downcase.gsub(/^0/, '')
  end
end
