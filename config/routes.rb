Rails.application.routes.draw do
  root 'users#index'
  resources :contacts
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
