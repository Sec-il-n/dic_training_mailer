Rails.application.routes.draw do
  root 'contacts#new'
  resources :contacts
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
