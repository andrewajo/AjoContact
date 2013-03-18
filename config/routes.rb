AjoContact::Engine.routes.draw do
  root :to => 'contact#index'
  scope ":locale" do
    resources :messages, :contact
    match 'thank_you' => 'contact#thank_you', :as => 'contact_thank_you'
  end
end
