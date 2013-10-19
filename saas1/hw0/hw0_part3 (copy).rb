class BookInStock

  def initialize(isbn, price)    
    @isbn = isbn
    @price = price

    if isbn.empty? || price <= 0
      raise ArgumentError, "check arguments"
    end
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string()
    return "$#{sprintf('%.2f', @price)}"
  end
end


