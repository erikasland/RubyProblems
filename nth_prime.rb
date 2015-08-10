  require "prime"

  def find_prime(nth)
    Prime.take(nth).last  
    # NOTE TO SELF: .take(nth) prints all prime numbers within the Prime class (list of prime numbers) and .last returns the last prime number of the returned list.
  end

  puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
  puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
  puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
  puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
  puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)