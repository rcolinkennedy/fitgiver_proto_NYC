namespace :db do
    desc "Create actvity records in the database."
    require 'faker'
    task :populate => :environment do
      100.times do

        u = Activity.new(
            :desc => Faker::Name.first_name
        )
        u.save!

      end
    end
end