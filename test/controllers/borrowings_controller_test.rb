require "test_helper"

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  test "should create borrowing" do
    user = users(:one)
    book = books(:one)
    sign_in user

    assert_difference("Borrowing.count") do
      post borrowings_url, params: { book_id: book.id }
    end
  end
end