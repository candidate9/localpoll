Localpoll::Application.routes.draw do

  resources :polls, :only => :show do
    resource :results, :only => :show
  end

  resource :post_codes, :only => :show

  resources :constituency, :only => :show, :path => "" do
    resources :local_poll, :only => :show, :path => "" do
      resource :vote, :only => :show, :controller => :votes
      resource :votes, :only => :create
      resource :results, :only => :show, :controller => :local_results
    end
  end

  root :to => "homepage#show"

end
