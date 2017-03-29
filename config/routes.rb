Rails.application.routes.draw do
  get('/bill_splitter', { to: 'bill_splitter#index'} )
  post('/bill_splitter', {to: 'bill_splitter#create', as: 'bill_submit'})


  root 'welcome#index'
end
