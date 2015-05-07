require 'rails_helper'

# TODO: better specs for this
RSpec.describe Member, type: :model do
  describe '#discussions' do
    it { should have_many :discussions }
  end

  describe '#first_name' do
    it { should have_db_column(:first_name).of_type(:string) }
  end

  describe '#last_name' do
    it { should have_db_column(:last_name).of_type(:string) }
  end

  describe '#handle' do
    it { should have_db_column(:handle).of_type(:string) }
  end

  describe '#email' do
    it { should have_db_column(:email).of_type(:string) }
  end

  describe '#role' do
    it { should have_db_column(:role).of_type(:string) }
  end

  describe '#full_name' do
    with :member
    subject { member.full_name }
    it { should eq "#{member.first_name} #{member.last_name}" }
  end
end
