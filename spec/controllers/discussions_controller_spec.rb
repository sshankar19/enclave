require 'rails_helper'

RSpec.describe DiscussionsController, type: :controller do
  with :member
  describe '#index' do
    before do
      sign_in member
      get :index
    end

    it { should redirect_to root_path }
  end

  describe '#show' do
    with :discussion
    before do
      sign_in member
      get :show, id: discussion.id
    end

    it { should respond_with :ok }
    it { should render_template :show }
  end
end
