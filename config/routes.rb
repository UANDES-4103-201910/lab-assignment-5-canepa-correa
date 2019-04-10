Rails.application.routes.draw do
  resources :orders
  resources :ticket_zones
  resources :tickets
  resources :ticket_types do
  resources :tickets
  end
  resources :event_venues
  resources :events do
    collection do
      get :upcoming_events
    end
  end
  resources :users do
    collection do
      get :user_with_most_tickets
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
