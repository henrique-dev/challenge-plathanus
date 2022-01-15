class NumberConverter
  def self.natural_to_roman(natural_number)
    return 'Not a natural number' if natural_number.class != Integer
    return 'The largest number that can be converted is 3,999' if natural_number > 3999

    table_values = [
      ['I', 'V'],
      ['X', 'L'],
      ['C', 'D'],
      ['M', '?']
    ]

    roman_number = []
    natural_number.to_s.split('')
      .map {|v| v.to_i}
      .reverse.each.with_index do |number, i|
        if number <= 5
          if number / 2 < 2
            roman_number << (number.times.to_a.map{table_values[i][0]}.join)
          elsif number < 5
            roman_number << (table_values[i][0] + table_values[i][1])
          else
            roman_number << table_values[i][1]
          end
        else
          number = number - 5
          if number / 2 < 2
            roman_number << (table_values[i][1] + (number.times.to_a.map{table_values[i][0]}.join))
          elsif number < 5
            roman_number << table_values[i][0] + table_values[i+1][0]
          else
            roman_number << table_values[i+1][0]
          end
        end
    end
    roman_number.reverse.join
  end

end
