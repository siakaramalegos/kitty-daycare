class Owner < ActiveRecord::Base
  has_many :cats

  def lastfirst
    "#{last_name}, #{first_name}"
  end
end
