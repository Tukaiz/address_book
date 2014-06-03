class Address < ActiveRecord::Base
  validates :line_1, :city, :province, :postal_code, :country, presence: true
  belongs_to :addressable, polymorphic: true
  has_and_belongs_to_many :shipping_carrier_services

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
    "#{addressable.first_name} #{addressable.last_name} &#13;"
  end
  def drop_down_line_2
    "#{line_1} #{line_2} #{city} #{province} #{postal_code}"
  end

  def formated_city_state_line
    "#{city}, #{province} #{postal_code}"
  end

end
