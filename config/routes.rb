AjoContact::Engine.routes.draw do
  resources :messages, :contact
  match 'thank_you' => 'contact#thank_you', :as => 'contact_thank_you'
end
