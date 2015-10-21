class CartesianProduct
  include Enumerable
 
  def initialize(firstMult, secondMult)
    if firstMult.size == nil || secondMult.size == nil || firstMult.size == 0 || secondMult.size == 0
      @product  = nil
    else
      @product = Array.new
      
      temp1 = firstMult.to_a
      temp2 = secondMult.to_a
      
      i=0
      j=0
      while i < temp1.size do
        j=0
        while j < temp2.size do
          temp = Array.new
          temp.push(temp1.fetch(i),temp2.fetch(j))
          
          @product.push(temp)
          
          j = j + 1
        end
        i = i + 1
      end
    end
  end

  attr_accessor :product  

  def each(&block)
    @product.each(&block)
  end
end