require "test_helper"

class BorrowingTest < ActiveSupport::TestCase
  test "should not allow borrowing an already borrowed book" do
    user = users(:one)
    book = books(:one)
    Borrowing.create(user: user, book: book, due_date: 2.weeks.from_now)

    borrowing = Borrowing.new(user: user, book: book, due_date: 2.weeks.from_now)
    assert_not borrowing.save, "Allowed borrowing an already borrowed book"
  end
end