require 'rails_helper'

RSpec.describe MembersController, type: :controller do
  describe '#index' do
    with :member
    context 'with a signed-in user' do
      before do
        sign_in member
        get 'index'
      end

      it { should respond_with :ok }
      it { should render_template 'index' }
    end

  end
end
