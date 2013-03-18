AjoContact::Engine.routes.draw do
  scope ":locale" do
    root :to => 'contact#index'
    resources :messages, :contact
    match 'thank_you' => 'contact#thank_you', :as => 'contact_thank_you'
  end
end
