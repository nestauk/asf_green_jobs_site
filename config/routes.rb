Rails.application.routes.draw do
  root "occupations#home"

  resources :occupations, only: %i[index show]
end
