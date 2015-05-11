class Category < ActiveRecord::Base
  has_many :discussions
  validates :name, presence: true, uniqueness: true
  default_scope { order('name ASC') }
end
