class List < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :items
  attr_accessible :comment, :done, :name, :tags
end
