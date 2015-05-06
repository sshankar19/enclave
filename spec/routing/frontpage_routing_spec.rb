require 'rails_helper'

RSpec.describe 'public routes' do
  it 'routes the root path correctly' do
    expect(get: '/').to route_to('frontpage#index')
  end
end
