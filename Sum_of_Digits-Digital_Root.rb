def digital_root(n)
    sum = n
    while sum > 9
      sum = sum.to_s().split('').map{ |e| e.to_i }.sum()
    end
  end
puts(digital_root(493193))


#Best
  # n < 10 ? n : digital_root(n.digits.sum)
  # or
  # n < 10 ? n : digital_root(n / 10 + n % 10)

# Test.assert_equals(digital_root(16), 7)
# Test.assert_equals(digital_root(942), 6)
# Test.assert_equals(digital_root(132189), 6)
# Test.assert_equals(digital_root(493193), 2)