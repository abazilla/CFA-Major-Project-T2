module ApplicationHelper
  def percent_funded(current, requested)
    number_to_percentage(((current.to_f / requested.to_f)*100))
  end
end