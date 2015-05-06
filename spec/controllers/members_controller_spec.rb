require 'rails_helper'

RSpec.describe MembersController, type: :controller do
  with :member

  describe '#index' do
    before do
      sign_in member
      get 'index'
    end

    it { should respond_with :ok }
    it { should render_template 'index' }
  end

  describe '#show' do
    before do
      sign_in member
      get 'show', id: member.id
    end

    it { should respond_with :ok }
    it { should render_template 'show' }
  end
end
