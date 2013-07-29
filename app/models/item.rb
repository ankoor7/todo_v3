class Item < ActiveRecord::Base
  belongs_to :list
  attr_accessible :comment, :done, :name, :tags
end
