Rails.application.routes.draw do

  mount DataProvider::Engine => '/data_provider'
end
