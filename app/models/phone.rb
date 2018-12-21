class Phone < ApplicationRecord

  def self.parse_number_to_int(number)
    number.tr('^0-9', '').to_i
  end

  def self.is_valid_number?(number)
    int_number = parse_number_to_int(number)
    1111111111 <= int_number && int_number <= 9999999999
  end

  def self.generate_random_number
    rand(1111111111..9999999999)
  end
end
