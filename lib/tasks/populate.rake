namespace :db do
  desc "Clear the DB and fill with excellent sample data"
  task :populate => :environment do
    require "populator"
    require "faker"

    # Clear out old stuff
    [Owner, Cat].each(&:destroy_all)

    # Add fake data using Faker
    Owner.populate 20 do |owner|
      owner.last_name = Faker::Name.last_name
      owner.first_name = Faker::Name.first_name
      owner.phone = Faker::PhoneNumber.phone_number
      owner.emergency_name = Faker::Name.name
      owner.emergency_phone = Faker::PhoneNumber.cell_phone

      Cat.populate 1..3 do |cat|
        cat.owner_id = owner.id
        cat.breed_id = 1..11
        cat.name = Faker::App.name
        cat.dob = Faker::Time.between(Date.today - 3650, Date.today)
        cat.allergies = Faker::Lorem.words(0..3)
        cat.vet_name = Faker::Company.name + ' Animal Clinic'
        cat.vet_phone = Faker::PhoneNumber.phone_number
      end
    end

    puts "Done populating!"
  end
end


# == Schema Information
#
# Table name: owners
#
#  id              :integer          not null, primary key
#  last_name       :string
#  first_name      :string
#  phone           :string
#  emergency_name  :string
#  emergency_phone :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null

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