AjoContact::Engine.routes.draw do
  root :to => 'contact#index'
  resources :messages, :contact
  match 'thank_you' => 'contact#thank_you', :as => 'contact_thank_you'
  Rails.application.routes.draw do
    root :to => "AjoContact::contact#index"
  end
end
