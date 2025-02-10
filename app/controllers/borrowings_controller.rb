class BorrowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @book = Book.find(params[:book_id])
    @borrowing = current_user.borrowings.new(book: @book, due_date: 2.weeks.from_now)

    if @borrowing.save
      redirect_to user_profile_path, notice: "Book borrowed successfully."
    else
      redirect_to book_path(@book), alert: @borrowing.errors.full_messages.join(", ")
    end
  end

  def return
    @borrowing = current_user.borrowings.find_by(id: params[:id])

    if @borrowing.nil?
      redirect_to user_profile_path, alert: "Borrowing record not found."
    elsif @borrowing.update(returned_at: Time.current)
      redirect_to user_profile_path, notice: "Book returned successfully."
    else
      redirect_to user_profile_path, alert: "Failed to return book."
    end
  end
end
