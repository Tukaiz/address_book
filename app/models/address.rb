class Address < ActiveRecord::Base
  belongs_to :address_card

  def url_for_address
    "/addresses/#{id}"
  end

  def drop_down_display_value
    lines = [drop_down_line_1, drop_down_line_2]
    html_string = ""
    lines.each do |line|
      html_string << line
    end
    html_string.html_safe
  end

  def drop_down_line_1
    "#{address_card.first_name} #{address_card.last_name} &#13;"
  end
  def drop_down_line_2
    "#{line_1} #{line_2} #{city} #{province} #{postal_code}"
  end

  def formated_city_state_line
    "#{city}, #{province} #{postal_code}"
  end

end
