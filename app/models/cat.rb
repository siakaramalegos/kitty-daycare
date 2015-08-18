class Cat < ActiveRecord::Base
  belongs_to :owner
  belongs_to :breed
end
