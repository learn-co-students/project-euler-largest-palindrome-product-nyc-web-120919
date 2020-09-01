# Implement your object-oriented solution here!
class LargestPalindromeProduct
    attr_accessor :answer
    
    def initialize
        @answer = 0
        self.largest_palindrome_product
    end

    def palindrome?(input)
        input.to_s == input.to_s.reverse
    end

    def largest_palindrome_product
        (100..999).each do |x|
            (100..999).each do |y|
                product = x * y
                if self.palindrome?(product) && product > @answer
                    @answer = product
                end
            end
        end
    end
end