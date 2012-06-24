Localpoll::Application.routes.draw do

  resources :constituency, :only => :show, :path => "" do
    resources :local_poll, :only => :show, :path => ""
  end


  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'
end
