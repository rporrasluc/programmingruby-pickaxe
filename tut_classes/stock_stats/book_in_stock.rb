class BookInStock

  attr_reader   :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
  #def isbn
  #  @isbn
  #end
  #def price
  #  @price
  #end
  #def price=(new_price)
  #  @price = new_price
  #end
  def price_in_cents
    Integer(price*100 + 0.5)
  end
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

#b1 = BookInStock.new('my_isbn', 9)
#b2 = BookInStock.new('my_isbn2', 9.95)
#b3 = BookInStock.new('my_isbn3', '9.95')
#puts b1
#puts b2
#puts b3

#puts "ISBN  = #{b1.isbn}"
#puts "Price = #{b1.price}"

#b1.price = 4.95 # => Discount!
#puts "Price = #{b1.price}"

#book = BookInStock.new('isbn1', 33.80)
#puts "Price          = #{book.price}"
#puts "Price in cents = #{book.price_in_cents}"
#book.price_in_cents = 1234
#puts "Price          = #{book.price}"
#puts "Price in cents = #{book.price_in_cents}"