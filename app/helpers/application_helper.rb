module ApplicationHelper
  
  # TODO - Views shouldn't have this logic, so place it in a module and extend the models
  def number_to_francs(price = 0)
    rounded_price = (price / 5).round(2) * 5
    number_to_currency(rounded_price, :unit => "CHF ")
  end
end
