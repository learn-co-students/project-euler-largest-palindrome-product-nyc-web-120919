# Implement your procedural solution here!
def palindrome?(input)
    input.to_s == input.to_s.reverse
end

def largest_palindrome_product
    max = 0

    (100..999).each do |x|
        (100..999).each do |y|
            product = x * y
            if palindrome?(product) && product > max
                max = product
            end
        end
    end
    return max
end