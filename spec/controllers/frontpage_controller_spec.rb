require 'rails_helper'

describe FrontpageController, type: :controller do
  describe "GET :index" do
    context 'with a signed-in user' do
      let(:member) { FactoryGirl.create :member }
      before do
        sign_in member
        get :index
      end

      it { should respond_with :ok }
      it { should render_template "layouts/authenticated" }
      it { should render_template :index }
    end

    context 'without a signed-in user' do
      before do
        get :index
      end
      it { should redirect_to new_member_session_path }
    end
  end
end
