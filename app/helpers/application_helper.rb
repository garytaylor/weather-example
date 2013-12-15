module ApplicationHelper
  #Given a unix timestamp, outputs the day of the week
  def day_from_timestamp(ts)
    Time.at(ts).strftime('%A')
  end
end
