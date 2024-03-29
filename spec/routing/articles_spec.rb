require 'rails_helper'

RSpec.describe '/articles routes' do
  it 'routes to articles#index' do
    aggregate_failures do
      expect(get '/articles').to route_to('articles#index')
    end
  end

  it 'routes to articles#show' do
    expect(get('/articles/1')).to route_to('articles#show', id: '1')
  end

  it 'should route to article create' do
    expect(post '/articles').to route_to('articles#create')
  end
end
