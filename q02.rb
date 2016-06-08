# Q02: 数列の四則演算

operations = ['+', '-', '*', '/', '']
filtered_formula = ''

(1000..9999).each do |n|
  number = n.to_s.split('')
  operations.each do |a|
    operations.each do |b|
      operations.each do |c|
        next if a == b and b == c and a == c
        formula = number[0] + a + number[1] + b + number[2] + c + number[3]
        if md = formula.match(/0[0-9]/)
          str = md[0].slice(1..7)
          filtered_formula = formula.gsub(/0[0-9]+/, str)
        elsif md = formula.match(/00[0-9]/)
          str = md[0].slice(2..7)
          filtered_formula = formula.gsub(/0[0-9]+/, str)
        else
          filtered_formula = formula
        end
        unless filtered_formula.include?('/0')
          result = eval(filtered_formula)
          if n.to_s.reverse == result.to_s
            p "number = #{n}"
            p filtered_formula
          end
        end
      end
    end
  end
end
