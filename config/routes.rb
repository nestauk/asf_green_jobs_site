Rails.application.routes.draw do
  root "occupations#home"

  get "/top-green-jobs", to: "occupations#top", as: "top"

  get "/occupations/:id", to: "occupations#show", as: "occupation"
end
