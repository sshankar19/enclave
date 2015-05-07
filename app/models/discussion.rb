class Discussion < ActiveRecord::Base
  belongs_to :author, class_name: 'Member'
  has_many :comments
  accepts_nested_attributes_for :comments
end
