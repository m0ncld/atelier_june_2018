require 'rails_helper'

describe 'AppRouting' do
  it {
    expect(root: 'books', action: 'index')
  }

  #get 'books/:book_id/reserve', to: 'reservations#reserve', as: 'reserve_book'
  it {
    expect(get: 'books/12/reserve').to route_to(controller: 'reservations', action: 'reserve', book_id: '12')
  }

  #get 'books/:book_id/take', to: 'reservations#take', as: 'take_book'
  it {
    expect(get: 'books/13/take').to route_to(controller: 'reservations', action: 'take', book_id: '13')
  }

  #get 'books/:book_id/give_back', to: 'reservations#give_back', as: 'give_back_book'
  it {
    expect(get: 'books/14/give_back').to route_to(controller: 'reservations', action: 'give_back', book_id: '14')
  }

  #get 'books/:book_id/cancel_reservation', to: 'reservations#cancel', as: 'cancel_book_reservation'
  it {
    expect(get: 'books/15/cancel_reservation').to route_to(controller: 'reservations', action: 'cancel', book_id: '15')
  }

  #get 'users/:user_id/reservations', to: 'reservations#users_reservations', as: 'users_reservations'
  it {
    expect(get: 'users/16/reservations').to route_to(controller: 'reservations', action: 'users_reservations', user_id: '16')
  }

  #get 'google-isbn', to: 'google_books#show'
  it {
    expect(get: 'google-isbn').to route_to(controller: 'google_books', action: 'show')
  }

  it {
    expect(get: 'books/').to route_to(controller: 'books', action: 'index')
  }

  it {
    expect(post: 'books/').to route_to(controller: 'books', action: 'create')
  }

  it {
    expect(get: 'books/12').to route_to(controller: 'books', action: 'show', id: '12')
  }

  it {
    expect(get: 'books/new').to route_to(controller: 'books', action: 'new')
  }

  it {
    expect(get: 'books/13/edit').to route_to(controller: 'books', action: 'edit', id: '13')
  }

  it {
    expect(get: 'books/13').to route_to(controller: 'books', action: 'show', id: '13')
  }

  it {
    expect(patch: 'books/13').to route_to(controller: 'books', action: 'update', id: '13')
  }

  it {
    expect(put: 'books/13').to route_to(controller: 'books', action: 'update', id: '13')
  }

  it {
    expect(delete: 'books/13').to route_to(controller: 'books', action: 'destroy', id:'13')
  }
end
