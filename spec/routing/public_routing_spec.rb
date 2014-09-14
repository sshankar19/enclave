require 'rails_helper'

RSpec.describe 'public routes' do
  it 'routes the welcome page correctly' do
    expect(get: '/').to route_to('public#welcome')
  end
end
