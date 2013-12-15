module ApplicationHelper
  def day_from_timestamp(ts)
    Time.at(ts).strftime('%A')
  end
end
