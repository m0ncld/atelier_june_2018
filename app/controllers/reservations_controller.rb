class ReservationsController < ApplicationController
  before_action :load_user, only: [:users_reservations]

  def reserve
    reservation_handler.reserve if book.can_reserve?(current_user)
    redirect_to(book_path(book.id))
  end

  def take
    reservation_handler.take if book.can_take?(current_user)
    redirect_to(book_path(book.id))
  end

  def give_back
    reservation_handler.give_back if book.can_give_back?(current_user)
    redirect_to(book_path(book.id))
  end

  def cancel
    reservation_handler.cancel_reservation
    redirect_to(book_path(book.id))
  end

  def users_reservations
  end

  private

  def reservation_handler
    @reservation_handler ||= ::ReservationsHandler.new(current_user, book)
  end

  def book
    @book ||= Book.find(params[:book_id])
  end

  def load_user
    @user = User.find(params[:user_id])
  end
end
