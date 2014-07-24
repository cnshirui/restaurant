require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "book name must not be empty" do 
    book = Book.new()
    assert book.invalid?
#    puts book.errors.inspect
    assert book.errors[:name].any?
    assert_equal Book.all.size, 2
  end
end
