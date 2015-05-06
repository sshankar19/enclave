require 'rails_helper'

describe FrontpageController, type: :controller do
  describe "GET :welcome" do
    before { get :welcome }

    it { is_expected.to respond_with :ok }
    it { is_expected.to render_template "layouts/unauthenticated" }
    it { is_expected.to render_template :welcome }
  end
end
