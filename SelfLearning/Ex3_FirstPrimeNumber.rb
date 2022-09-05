require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
  return "This is not a integer value" unless n.is_a? Integer;

  (1..n).each{ |index| puts index if isPrime(index) }

  Prime.first n;
end

def isPrime (n)
  (2..n).each {|element| return n % element == 0 ? false : true }
  return true;
end
first_n_primes(10);