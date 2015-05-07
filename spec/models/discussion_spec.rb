require 'rails_helper'

RSpec.describe Discussion, type: :model do
  describe '#author' do
    it { should belong_to(:author) }
  end

  describe '#title' do
    it { should have_db_column(:title).of_type(:string) }
  end

  describe '#active' do
    it { should have_db_column(:active).of_type(:boolean) }
  end

  describe '#closed' do
    it { should have_db_column(:closed).of_type(:boolean) }
  end

  describe '#sticky' do
    it { should have_db_column(:sticky).of_type(:boolean) }
  end
end
