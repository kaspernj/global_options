Rails.application.routes.draw do

  mount GlobalOptions::Engine => "/global_options"
end
