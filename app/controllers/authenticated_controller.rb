class AuthenticatedController < ApplicationController
  before_action :authenticate_member!
  layout 'authenticated'
end
