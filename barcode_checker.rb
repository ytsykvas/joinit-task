# frozen_string_literal: true

# convert number to ISBN13 barcode
class BarcodeChecker
  def self.number_to_isbn(number)
    number = number.to_s
    return 'wrong ISBN' unless valid_isbn?(number)

    digits = number.chars.map(&:to_i)
    sum = digits.each_with_index.sum { |digit, index| digit * (index.even? ? 1 : 3) }
    check_digit = (10 - (sum % 10)) % 10
    number + check_digit.to_s
  end

  def self.valid_isbn?(number)
    number.match?(/^\d{12}$/)
  end
end

isbn = BarcodeChecker.number_to_isbn('978014300723')
puts "ISBN: #{isbn}" if isbn
