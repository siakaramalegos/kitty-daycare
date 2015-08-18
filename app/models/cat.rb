class Cat < ActiveRecord::Base
  belongs_to :owner
  belongs_to :breed

  validates :name, :owner_id, :breed_id, presence: true
end

# == Schema Information
#
# Table name: cats
#
#  id         :integer          not null, primary key
#  name       :string
#  owner_id   :integer
#  breed_id   :integer
#  dob        :date
#  allergies  :string
#  vet_name   :string
#  vet_phone  :string
#  in_daycare :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_cats_on_breed_id  (breed_id)
#  index_cats_on_owner_id  (owner_id)
#
