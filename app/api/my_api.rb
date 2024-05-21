class MyApi < Grape::API
  version 'v1', using: :header, vendor: 'mycompany'
  format :json

  resource :users do
    desc 'Return a list of users.'
    get do
      User.all
    end
  end
end
