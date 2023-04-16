Rails.application.routes.draw do
    namespace 'api' do
      namespace 'v1' do
          get 'read_csv'
        end
      end
  end
